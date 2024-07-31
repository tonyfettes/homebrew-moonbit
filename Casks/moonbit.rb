cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240731"
  sha256 arm:   "7f6f0c7f291c15fb30e8bb09f2013245420ab59258ec83adab26b1c0b63d1901",
         intel: "9bd5c088a4de997175772f771fd1fb879149aa8c9dbed35a9d364130b410f3ae"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
