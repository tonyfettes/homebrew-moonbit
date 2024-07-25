cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240725"
  sha256 arm:   "aae6e80ebc9d429a4e68451fb66e0c9beb5cf4ebf394532ac8c645270e3da6c1",
         intel: "744054a01b0b32a1298890738a6210d055c724024ceec5b6d0813eee3f3a0dc9"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
