cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240823"
  sha256 arm:   "57ddd1134d7d9868a0160993d883e0c0282b6c5fffb350d8883ed74e1695c9b4",
         intel: "64b7633fb932dd9ec4bb53eda900256b65ab4e85b30ff419c65c50888dc9d089"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
