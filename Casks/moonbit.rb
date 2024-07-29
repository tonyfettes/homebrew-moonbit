cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240726"
  sha256 arm:   "0d3aafce91b5e1021ad2df3f2fbf3c073a69357e5d85392c27805480773a2187",
         intel: "ba0575a5bf90a46114bb76a1c27ab3884df56764a7ac9c091a482941bf5d2cd0"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
