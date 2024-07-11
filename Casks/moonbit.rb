cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240711"
  sha256 arm:   "182e5f2660a70053f29b66aa7b1ff9ce2455962c369884318fc6a47294a82ce5",
         intel: "929e8f85b8819f8d7f791c2d82103cc72137d53d9ec39dea86d0b6b6bc9ed0aa"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
