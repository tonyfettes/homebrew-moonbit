cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240723"
  sha256 arm:   "01502a4154ad44804e3005228616814b80e6e3e7f2e73a2b5e7a21ee230ddf06",
         intel: "065f47979b9efe2661a65306da07fa5d3dafab76e6dfe5ac009f679cde1329cd"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
