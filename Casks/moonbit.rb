cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241202"
  sha256 arm:   "e8ec9d1f48d19d2b7dbc2e08c4515447f33f1124b3155dc5ef96c16869c2e74c",
         intel: "a2533bebcf9ad40ef60d6552e89c60a8d9dc39dd6ad6a67e9532e6ac1b6994d6"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
