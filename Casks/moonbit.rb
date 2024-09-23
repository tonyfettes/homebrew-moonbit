cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240923"
  sha256 arm:   "0f8f3a2d252f2effc3553079be7f4b3c82cf16fb0a912b3545fe6f7fdcae2a7d",
         intel: "788eb8f88ccf5a60dbbb0898e88219c764828fe3d33401929eec80997dcaac4a"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
