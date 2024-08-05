cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240805"
  sha256 arm:   "0634666742933d8e1c8fa854cc5790d88e3051aa632b69304a30c6a435826f43",
         intel: "7de963626210db41b2dac1fc7b4132670b25f7783ce90efdfd733f43db78bb6e"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
