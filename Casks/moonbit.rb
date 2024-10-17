cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241017"
  sha256 arm:   "e045cfa09aa2e082b07be0abec1472d8c10c0249ba6cc2db4f83cedd804ea272",
         intel: "9b986cca4a659d8b6e411519a598d6692f73eb60e2cf2b51467c1d4c2cdc2965"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
