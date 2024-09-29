cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240926"
  sha256 arm:   "fd701b5e3fb7ac4e221aabe694eaaf95513c9add33bc83564f24594738ae3d0b",
         intel: "8b54dab0303a09d1cf03f73647b7777ef45dfbe5209ef43b9e75f5cbeba63592"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
