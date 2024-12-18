cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241218"
  sha256 arm:   "2d21d79d43a8fc8cebf70aae056d23e1702c74502c58ac4a93f356a0f5b4cf03",
         intel: "1c855264c2daee14e4c69c8580bef70702e98ee80ebd782ef97664b6dc7c8285"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
