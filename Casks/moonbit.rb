cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240809"
  sha256 arm:   "2bde67a1bc2ffc28c3527e4eb0260581f80aee79a75e4470a4c8100d491e2943",
         intel: "ee8f12d22b1cc679f660b5a9e0a78f621af19576f6e12ad5cb317329d79afe95"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
