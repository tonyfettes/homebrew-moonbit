cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240806"
  sha256 arm:   "d766c3c26ede1ff1eacf046db4a050171a0de56c3182c7ab183f439e55783634",
         intel: "08a62449493da6291a49dd375f2714e294fcc2a9f83757258bd6540a2d680666"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
