cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240802"
  sha256 arm:   "76b03f70dbbfb194e675195e9cb1b2d2d288da2272f5ab0aabb7a15d46964f49",
         intel: "5dc8749aaae7a0f7c743adc5a067855974537a549205b41398a92fea422f4c1a"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
