cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "20240422"
  sha256 arm:   "5dd728c35a1d6222374324e066cdb444b42e649924b68bae3f4106e33e065efc",
         intel: "98cdeb15409ab70e667ecade8e1cc966e5250074d71079de85c69534e5b3a081"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
