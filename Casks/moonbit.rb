cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240626"
  sha256 arm:   "64f42ae8a5243fdbda5565e954d23ac7a127cb86a61986ac7f1e399e4f70576a",
         intel: "28498fea8be4b411d16b7859fe797e51f881e63ab56563b1227a45bb6f0379e5"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
