cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240624"
  sha256 arm:   "ca8fac29be1bd1de650f0a44f3530db254892f1f2b7490dddad43e2b944fa4cd",
         intel: "170cde5cef168bfcc7001bdd2be03ca475b988f74a8c5753383c6483a07ff6f0"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
