cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241204"
  sha256 arm:   "b97f0ce82b20e0bc2c59d77b723da99f2174c10b10f518bed97b6abe9de66bab",
         intel: "fea8f7a206107add32a512b6f2ead7e926751ce001176f37bbbaa990002e5037"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
