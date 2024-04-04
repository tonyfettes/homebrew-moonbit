class Moonbit < Formula
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"
  url "https://cli.moonbitlang.com/core.zip"
  version "20240403"
  license "Apache-2.0 or"

  on_macos do
    on_arm do
      resource "moon" do
        url "https://cli.moonbitlang.com/macos_m1/moon"
      end
      resource "moonc" do
        url "https://cli.moonbitlang.com/macos_m1/moonc"
      end
      resource "moondoc" do
        url "https://cli.moonbitlang.com/macos_m1/moondoc"
      end
      resource "moonfmt" do
        url "https://cli.moonbitlang.com/macos_m1/moonfmt"
      end
      resource "moonrun" do
        url "https://cli.moonbitlang.com/macos_m1/moonrun"
      end
      resource "mooninfo" do
        url "https://cli.moonbitlang.com/macos_m1/mooninfo"
      end
    end
  end

  def install
    libexec.install "moon"
    bin.env_script_all_files(libexec, MOON_HOME: pkgshare)
    bin.install "moondoc"
    bin.install "moonfmt"
    bin.install "moonrun"
    bin.install "mooninfo"
    (pkgshare/"lib").install "core.zip"
  end

  test do
    system "#{bin}/moon", "version"
    system "#{bin}/moonc", "-v"
  end
end
