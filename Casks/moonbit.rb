cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241216"
  sha256 arm:   "800f64fbe6c609d951fededf401f9a02ff8ef5d72e0ccde359d3779ffc4cfc5c",
         intel: "2703e00af4b038504fa048feae1ec47c9606b8064e62e88ee155679f7f0afbf4"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
