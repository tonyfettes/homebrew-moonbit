cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240914"
  sha256 arm:   "85b5741bb1e21ad1b05d34e3444536dca566dc4645f715a768ea0ca428cc3e6e",
         intel: "afd39411454bf02bcb8c6098d75c4ebf97ed6eb7acddd7c843765c28270b095c"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
