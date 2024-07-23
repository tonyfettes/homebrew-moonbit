cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240723"
  sha256 arm:   "bfa5fe99a643b08295a0a119f58cbaa56ed99137d49dfb5438b0111e46dfff61",
         intel: "50f00757b98c108da7788222b652e8b42d6e08993a982e16381be338c273fc53"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
