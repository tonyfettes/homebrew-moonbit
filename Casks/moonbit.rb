cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241028"
  sha256 arm:   "c3c4621c9f36d098440511be9043dfe36681367a23e6425839133f53f5737cd9",
         intel: "d2bd50dda2309b5727e2a15e633f71758ca4ff6f04eb60c67dba11424e98c1a8"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
