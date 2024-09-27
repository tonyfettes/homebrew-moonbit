cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240924"
  sha256 arm:   "29caf8302a2a95f52f872c18ff6d3e9a19bf0a46ed77a4af478edf060884cbcc",
         intel: "d019d80396eab0f11dbb2706a691d0c74631403268e7269b4507d15fa704a530"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
