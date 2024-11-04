cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241104"
  sha256 arm:   "5164dc2ed74eb5c03a863a46e13fec5b585e5ce8253b12d23f4e2c4495d3d2d8",
         intel: "a13448f7dadc78427bdfa9772522eabc12def6823887e314dfd1cd964c9ab038"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
