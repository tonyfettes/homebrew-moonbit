cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240715"
  sha256 arm:   "309c44ce45e2c6360805fba846c943092ce38f2298c88b14b238d55193e83190",
         intel: "cac1966855b21141fd94ce02ffbf2979ef4d9bec2bfa5558eccb3cc77337ee83"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
