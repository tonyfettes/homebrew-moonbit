cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241031"
  sha256 arm:   "eb78a79fd7abc47326c0958b146a717be374b75fa8d31eaa71c7d1d648a9d482",
         intel: "804e069e33984070016a068ade080082a937a21ae67aa9b8311d25b301fb6b2b"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
