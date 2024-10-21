cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241021"
  sha256 arm:   "12e316750f03b56f6278dc71abc034cebd03322d0776469156101c6014710fb5",
         intel: "7e8341c08f3ee37d52cc1c9ac34ec97fb821a9cf4dd06a97d10cea8d5dc7aa05"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
