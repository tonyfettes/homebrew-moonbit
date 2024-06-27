cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240627"
  sha256 arm:   "cfee67fe6092b0fe7e5dbf974ffb93af7b11ecf32b05eefa18774bbe6ba575f2",
         intel: "d315fa577632b418a5a0681a65f7869d0d289833bc0878bd137062c80436c230"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
