cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241008"
  sha256 arm:   "8e884c3ebc37c611e7fce2b03cd0823e86c7f8c1f5ad476991f1e8e541cfbe6e",
         intel: "4726b79efc958588113683084c596adb54892d1e0f8dfd46edbd06541657e3f4"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
