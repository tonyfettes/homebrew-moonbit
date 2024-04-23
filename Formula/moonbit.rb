class Moonbit < Formula
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"
  url "https://cli.moonbitlang.com/core.zip"
  version "20240422"
  sha256 "914a6551ab4a54e1d1ee42a5fc0d407b66e338148033304f47a729f68cc01ed3"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/tonyfettes/homebrew-moonbit/releases/download/moonbit-20240408"
    sha256 cellar: :any_skip_relocation, ventura:      "4045cd22e8c9fa310e994873a6f1bbdd6a0e8043644d90699c3974c0ff6f4bf8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "bffa3c5f4a77c96357ba8f6912954a0b3b4b2ffe255dfc76be73e85cee7f1a95"
  end

  on_macos do
    on_arm do
      resource "moon" do
        url "https://cli.moonbitlang.com/macos_m1/moon"
        sha256 "5dd728c35a1d6222374324e066cdb444b42e649924b68bae3f4106e33e065efc"
      end
      resource "moon_cove_report" do
        url "https://cli.moonbitlang.com/macos_m1/moon_cove_report"
        sha256 "945522a509e4755d2cd3ceb7a6eaa7b193089c749415388491a41a9e8751d4ee"
      end
      resource "moonc" do
        url "https://cli.moonbitlang.com/macos_m1/moonc"
        sha256 "91bcaaf0b4383e712abd0b76b96707f324b8a7a3f0780f32bc1281be623b30fc"
      end
      resource "moondoc" do
        url "https://cli.moonbitlang.com/macos_m1/moondoc"
        sha256 "a6d03393ce6b1512a2ec5df4feb2ac8874a79ae93416be2119e59fde47b9a413"
      end
      resource "moonfmt" do
        url "https://cli.moonbitlang.com/macos_m1/moonfmt"
        sha256 "0621baf2da49e1376411faf17a431a0cf6aeb13c3348395e788441f7adc5de86"
      end
      resource "mooninfo" do
        url "https://cli.moonbitlang.com/macos_m1/mooninfo"
        sha256 "1d3b70043c874fb831f734342c9e810b262c59508f547af86db57e1c2e17f96b"
      end
      resource "moonrun" do
        url "https://cli.moonbitlang.com/macos_m1/moonrun"
        sha256 "d66b306077164c5c73e889dbf40e6c57c47a803e8d03f2d5c6cdc27d7cf910a9"
      end
    end
    on_intel do
      resource "moon" do
        url "https://cli.moonbitlang.com/macos_intel/moon"
        sha256 "98cdeb15409ab70e667ecade8e1cc966e5250074d71079de85c69534e5b3a081"
      end
      resource "moon_cove_report" do
        url "https://cli.moonbitlang.com/macos_intel/moon_cove_report"
        sha256 "90ed148464d3cd55461490fe8fca765561a2e0c534bd0caad4211dc5145fa4c7"
      end
      resource "moonc" do
        url "https://cli.moonbitlang.com/macos_intel/moonc"
        sha256 "c0bcb6fb12cf785e82674e7e9f0205995cb593a043ad8142eee775fdaaf04e02"
      end
      resource "moondoc" do
        url "https://cli.moonbitlang.com/macos_intel/moondoc"
        sha256 "f7d3e5c159f984f26f72c41dd7dfa191b539220b22c8d2e2ee5cfb17e91e3872"
      end
      resource "moonfmt" do
        url "https://cli.moonbitlang.com/macos_intel/moonfmt"
        sha256 "fc5c9c36ef217db84e43b46f01cdaee83c8e0103918f222b227a18a89aa41c0f"
      end
      resource "mooninfo" do
        url "https://cli.moonbitlang.com/macos_intel/mooninfo"
        sha256 "d18a3d5c5c18f745c95889becefed4872cbed0e8d273c42a58eaa0a2a477b5fb"
      end
      resource "moonrun" do
        url "https://cli.moonbitlang.com/macos_intel/moonrun"
        sha256 "46a832f8a11bf9279f3e0a314ca5709f31986a50029bb9992d0797354defeda2"
      end
    end
  end

  on_linux do
    on_intel do
      resource "moon" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moon"
        sha256 "d5afcf0fb0c16d433772eeac0501ea05fc17f53e870abecf50c69bdfdd52a25a"
      end
      resource "moon_cove_report" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moon_cove_report"
        sha256 "63e33ef2fa2e0ad0f80e0c808c8371328c63b11b4885e0e6cca43b36af9b5308"
      end
      resource "moonc" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moonc"
        sha256 "b026302aecfa7e81445723efcdfa83f7f3925940dd5b52bfd9db0cf828c3bcd3"
      end
      resource "moondoc" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moondoc"
        sha256 "6ab59adf5bac911c169f5d7f3685b1be654d82b149cb4a4b138ad28fcdf0df71"
      end
      resource "moonfmt" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moonfmt"
        sha256 "2ea89467ceac0d88e42d63aed9b862e8d114017ccd02aea26a5aeaf08fe4c15c"
      end
      resource "mooninfo" do
        url "https://cli.moonbitlang.com/ubuntu_x86/mooninfo"
        sha256 "80db5f80559bba2498424787c9e46b70ebbd6ee572b040e44e77f20226eda6ef"
      end
      resource "moonrun" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moonrun"
        sha256 "53842027da2c14f2bcceaa803fd0a276043e147ab2052bff8bbce6ee6955c50f"
      end
    end
  end

  def install
    resource("moon").stage do
      chmod 0555, "moon"
      libexec.install "moon"
    end
    (bin/"moon").write <<~EOS
      #!/usr/bin/env sh

      MOON_HOME="${MOON_HOME:-#{pkgshare}}"
      export MOON_HOME

      #{libexec}/moon "$@"
    EOS
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
    (pkgshare/"lib/core").install Dir["*"]
  end

  def post_install
    cd pkgshare/"lib/core" do
      system "moon", "bundle"
    end
  end

  test do
    system "#{bin}/moon", "version"
    system "#{bin}/moon", "new", "hello"
    cd "hello" do
      system "#{bin}/moon", "build"
      system "#{bin}/moon", "run", "main"
    end
  end
end
