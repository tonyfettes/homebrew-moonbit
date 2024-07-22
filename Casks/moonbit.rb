cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240722"
  sha256 arm:   "bf804b5d99d2d44ea966fe40db3bae3141df3cf51ecb0832011ff8cc5a8309e4",
         intel: "45b07cdf90c03cb666b3a2ed34e332f115ec847b9b0c27d81dded6c28e160e49"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
