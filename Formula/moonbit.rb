class Moonbit < Formula
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"
  url "https://cli.moonbitlang.com/core.zip"
  version "20240403"
  sha256 "ba5bb61c4853bba2e07a80435e4052b5f0f193c531ee6042936e225027a94702"
  license "Apache-2.0"

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
    end
    on_intel do
      resource "moon" do
        url "https://cli.moonbitlang.com/macos_intel/moon"
        sha256 "d4bac3f1f2224589c128e4d51aac1f5806b402bf03845febafab9232bd429f53"
      end
      resource "moonc" do
        url "https://cli.moonbitlang.com/macos_intel/moonc"
        sha256 "d05ae8766c74771871b17618ffe480f4f6a7d9e7ab032291013411eac0af6de6"
      end
      resource "moondoc" do
        url "https://cli.moonbitlang.com/macos_intel/moondoc"
        sha256 "b63dbae9539c03851d8bfa75c87f1927862167d67d4b9e7930d4dc58b1b71920"
      end
      resource "moonfmt" do
        url "https://cli.moonbitlang.com/macos_intel/moonfmt"
        sha256 "d4f1dadefdfa1df42b0e86bca9ba5f3ef46c00670bdfea896d66ad1558f964b8"
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
        sha256 "197b04be0e292be8a7797893695b5df0cee736975249b79f2c8919cca6bc66d0"
      end
      resource "moonc" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moonc"
        sha256 "f5766fd8737129140b2059cb8d23af00cb194b83b47fdf6bf004570fcb8f0b32"
      end
      resource "moondoc" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moondoc"
        sha256 "81f34a423b2a40ed0c499d1c148a7e33a300ce7c8505146c12586ee81a78458b"
      end
      resource "moonfmt" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moonfmt"
        sha256 "04f74df31051bb0f16243b9ff8fb3975445b2620c4e18edbad30de0bf2adf7a0"
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
      system libexec/"moon", "bundle"
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
