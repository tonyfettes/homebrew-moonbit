cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240731"
  sha256 arm:   "fa4a6795f78e020f27b4f127cfac6fa564c5abfc2344cb0371d7b47e14e969e4",
         intel: "1b2cdfa7b643b4177e2b4e34d5533c661facc7ace6ff550e7f8e95c67fbb6dc0"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
