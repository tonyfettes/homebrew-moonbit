cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240701"
  sha256 arm:   "73b7c9a2782350a7b86d7a813e24bf556bc1160a040c52181fc18f2652e85613",
         intel: "38cf6649c21de2a521a6f1532244c2cd859b76bbc1cfa622d5e0cb4543cbd9c6"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
