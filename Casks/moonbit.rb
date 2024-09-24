cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240924"
  sha256 arm:   "29caf8302a2a95f52f872c18ff6d3e9a19bf0a46ed77a4af478edf060884cbcc",
         intel: "bc382e31faf656d843cdd3210395b06e41d854f35e93d053aca1f7a480794475"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
