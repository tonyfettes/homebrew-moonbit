import sys
import re
from pathlib import Path
from typing import Literal, Optional
from dataclasses import dataclass
import requests
import hashlib
import logging
import subprocess


logger = logging.getLogger(__name__)

State = Literal["url", "sha256", "name"]


@dataclass
class Resource:
    name: Optional[str]
    url: Optional[str]
    sha256: Optional[str]

    def reset(self):
        self.name = None
        self.url = None
        self.sha256 = None


def update_formula(file: Path):
    state: State = "name"
    lines = file.read_text().splitlines()
    resource = Resource(name=None, url=None, sha256=None)
    for line in lines:
        match state:
            case "name":
                matched = re.search(r"resource \"(?P<name>.*)\" do", line)
                if matched:
                    resource.name = matched.group("name")
                    state = "url"
            case "url":
                matched = re.search(r"url \"(?P<url>.*)\"", line)
                if matched:
                    resource.url = matched.group("url")
                    state = "sha256"
                else:
                    resource.reset()
                    state = "name"
            case "sha256":
                matched = re.search(r"sha256 \"(?P<sha256>.*)\"", line)
                if matched:
                    resource.sha256 = matched.group("sha256")
                    assert resource.name is not None
                    assert resource.url is not None
                    dest = Path(".") / resource.name
                    logger.info("downloading %s", resource.url.replace(".com", ".cn"))
                    with (
                        requests.get(
                            resource.url.replace(".com", ".cn"), stream=True
                        ) as r,
                        dest.open("wb") as f,
                    ):
                        r.raise_for_status()
                        wrote = 0
                        for chunk in r.iter_content(chunk_size=8192):
                            f.write(chunk)
                            wrote += len(chunk)
                            logger.info(
                                "downloading %s: %d KiB", resource.url, wrote / 1024
                            )
                    with dest.open("rb") as f:
                        sha256 = hashlib.file_digest(f, "sha256").hexdigest()
                    line = re.sub(
                        r'sha256 "(?P<sha256>.*)"', f'sha256 "{sha256}"', line
                    )
                resource.reset()
                state = "name"
        print(line)


def generate_cask(file: Path):
    arch = {"arm": "macos_m1", "intel": "macos_intel"}
    url = {}
    for k, v in arch.items():
        url[k] = f"https://cli.moonbitlang.com/{v}/moon"
    sha256 = {}
    for k, v in url.items():
        dest = Path(f"bin/{k}/moon")
        dest.parent.mkdir(parents=True, exist_ok=True)
        with (
            requests.get(url[k].replace(".com", ".cn"), stream=True) as r,
            dest.open("wb") as f,
        ):
            r.raise_for_status()
            wrote = 0
            for chunk in r.iter_content(chunk_size=8192):
                f.write(chunk)
                wrote += len(chunk)
                logger.info("downloading %d KiB", wrote / 1024)
        with dest.open("rb") as f:
            sha256[k] = hashlib.file_digest(f, "sha256").hexdigest()
    for k, v in sha256.items():
        logger.info(f"sha256 for {k} is {v}")
    subprocess.run(["chmod", "+x", "bin/arm/moon"], check=True)
    proc = subprocess.run(["bin/arm/moon", "version"], check=True, stdout=subprocess.PIPE)
    version_stdout = proc.stdout.decode("utf-8")
    logger.info("version: %s", version_stdout)
    version_match = re.match(r'moon (?P<version>(?P<major>0|[1-9]\d*)\.(?P<minor>0|[1-9]\d*)\.(?P<patch>0|[1-9]\d*)(?:-(?P<prerelease>(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\.(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\+(?P<buildmetadata>[0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?) .*', version_stdout)
    if version_match is None:
        raise ValueError("failed to get version")
    version = version_match.group('version')
    file.write_text(
        f"""cask "moonbit" do
  arch arm:   "{arch["arm"]}",
       intel: "{arch["intel"]}"

  version "{version}"
  sha256 arm:   "{sha256["arm"]}",
         intel: "{sha256["intel"]}"

  url "https://cli.moonbitlang.com/#{{arch}}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
"""
    )


def main(mode: str, file: Path):
    match mode:
        case "formula":
            update_formula(file)
        case "cask":
            generate_cask(file)


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    main(sys.argv[1], Path(sys.argv[2]))
