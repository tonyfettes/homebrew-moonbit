class Moonbit < Formula
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"
  url "https://cli.moonbitlang.com/core.zip"
  version "20240408"
  sha256 "4d59eb0875472d3d5d3817090a85b09c270c74d414e67ffcef5e0b3c59f10e1f"
  license "Apache-2.0"

  on_macos do
    on_arm do
      resource "moon" do
        url "https://cli.moonbitlang.com/macos_m1/moon"
        sha256 "4557e2244ff2bc87c935779679d9b050b13b5f41fc837b5234ebb87e23facf53"
      end
      resource "moonc" do
        url "https://cli.moonbitlang.com/macos_m1/moonc"
        sha256 "78a7bf3e019a50c5904c1e65228900d3e772fbfe7beb2d2ca350899111ea715b"
      end
      resource "moondoc" do
        url "https://cli.moonbitlang.com/macos_m1/moondoc"
        sha256 "a038c5492f3d36a4dbe47ff134e4c6a11192b616d2a359d16c9984a75f13f972"
      end
      resource "moonfmt" do
        url "https://cli.moonbitlang.com/macos_m1/moonfmt"
        sha256 "085456976b43382deade711af116cd79cbb30e105fc606da5f15a0744953fc7c"
      end
      resource "moonrun" do
        url "https://cli.moonbitlang.com/macos_m1/moonrun"
        sha256 "d66b306077164c5c73e889dbf40e6c57c47a803e8d03f2d5c6cdc27d7cf910a9"
      end
    end
    on_intel do
      resource "moon" do
        url "https://cli.moonbitlang.com/macos_intel/moon"
        sha256 "227e9b849f390aa04a657c84e9223b857cd1e73bb52c6d06597a49dba3822c76"
      end
      resource "moonc" do
        url "https://cli.moonbitlang.com/macos_intel/moonc"
        sha256 "68f66eb3f4c3bab95de4433b882ca022190657d012e4759e700021d80a9c05d1"
      end
      resource "moondoc" do
        url "https://cli.moonbitlang.com/macos_intel/moondoc"
        sha256 "491ace7ec86161542f28bdeb9cebb0f65baf601224f0e17f2100861a547c4999"
      end
      resource "moonfmt" do
        url "https://cli.moonbitlang.com/macos_intel/moonfmt"
        sha256 "4487164d2b15cc1a292ae963dda6d324bfc3b2d334e34037c61987e1208c5c8d"
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
        sha256 "f27de3e615aaebd6424557982736c71b4b77fd2fb400d205f238ed12363e01fe"
      end
      resource "moonc" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moonc"
        sha256 "99060f51e34af96adf75163ed7a2f84c95e01eaf13dead8a3e3757c80c60cd0e"
      end
      resource "moondoc" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moondoc"
        sha256 "29ee1e61bbab0a5887dbf550cfdbae7417fff1d9bc0a81a2b2794e8591c7133a"
      end
      resource "moonfmt" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moonfmt"
        sha256 "9fd3add1f9aad40818f0c2b96cb04a2abc91d1755fe95441825a62640cd14c03"
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
