cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240910"
  sha256 arm:   "0b3c982bd1d05f2d9588e29ad3f4c8a463ac96ea02d1ff8a9089aee2e0ae5ded",
         intel: "1d15637ee332d5f81e2410e02fe6c1359684faba6ce7a47770cd3438b4991b5e"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
