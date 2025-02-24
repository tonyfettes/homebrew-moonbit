cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20250224"
  sha256 arm:   "e4e088f98958d000d9e4ebcc67959d492cec65130028899033d4b6cbf0ceb7ff",
         intel: "787b7186f3c16686468e21050fedd62f9f1e8ea95e938aa322526f973fcdf67e"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
