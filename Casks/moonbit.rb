cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240919"
  sha256 arm:   "3fced5eabd1dec6bd68c07b8ea5f48c3ad97ff749ee801daee633a5502b0fd56",
         intel: "6ba373afc90f7a81c422522d45afaab1922f6ca808967861f9c515dcf74d2fb9"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
