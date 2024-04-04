class Moonbit < Formula
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"
  url "https://cli.moonbitlang.com/core.zip"
  version "20240403"
  sha256 "ba5bb61c4853bba2e07a80435e4052b5f0f193c531ee6042936e225027a94702"
  license "Apache-2.0 or"

  on_macos do
    on_arm do
      resource "moon" do
        url "https://cli.moonbitlang.com/macos_m1/moon"
        sha256 "1c306c51750b8fa988898259ef7d5c94f2cf2e50c93fcfb0422b6a80f1b91772"
      end
      resource "moonc" do
        url "https://cli.moonbitlang.com/macos_m1/moonc"
        sha256 "26db339647e5ac6df99afcafc57fe5c33bd2cb275092a3b6cab0035c227ccb6d"
      end
      resource "moondoc" do
        url "https://cli.moonbitlang.com/macos_m1/moondoc"
        sha256 "37c1a0cdf3f4b98872834925fdc44952aee53fe7b8e80e60efbe22dc95b7d24b"
      end
      resource "moonfmt" do
        url "https://cli.moonbitlang.com/macos_m1/moonfmt"
        sha256 "c56d4a9b11d007f5b364452b8d2ffa772cc7cce126073080b9e555cab72ec026"
      end
      resource "moonrun" do
        url "https://cli.moonbitlang.com/macos_m1/moonrun"
        sha256 "d66b306077164c5c73e889dbf40e6c57c47a803e8d03f2d5c6cdc27d7cf910a9"
      end
      resource "mooninfo" do
        url "https://cli.moonbitlang.com/macos_m1/mooninfo"
        sha256 "512ea81bfdc49c4c67c329da1bfe7f2d4bba65e107b5b37893907badf753a29e"
      end
    end
  end

  def install
    resource("moon").stage do
      libexec.install "moon"
    end
    bin.env_script_all_files(libexec, MOON_HOME: pkgshare)
    resource("moonc").stage do
      bin.install "moonc"
    end
    resource("moondoc").stage do
      bin.install "moondoc"
    end
    resource("moonfmt").stage do
      bin.install "moonfmt"
    end
    resource("moonrun").stage do
      bin.install "moonrun"
    end
    resource("mooninfo").stage do
      bin.install "mooninfo"
    end
    (pkgshare/"lib/core").install Dir["*"]
  end

  test do
    system "#{bin}/moon", "version"
    system "#{bin}/moonc", "-v"
  end
end
