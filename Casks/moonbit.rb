cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240812"
  sha256 arm:   "7a758b07e38c547637034f33192449e5ae8f5add8aab5924406155f8c3fa7463",
         intel: "20498824376c91e953a839766003d1ce642f05fb693c546fa0b808bd50159e63"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
