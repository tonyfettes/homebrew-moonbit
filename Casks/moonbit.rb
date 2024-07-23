cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240723"
  sha256 arm:   "0ef871e3aa4f2fcc0b9b06ec028467ff02c6c9eb15b1c8073961d851f4276bce",
         intel: "4699bad2f585345105fb2b62b0ef5bbe5f21cba91630b775c4554d338ccebccc"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
