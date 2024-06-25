cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240625"
  sha256 arm:   "0b6a49fb6e061943ad5cd30d82874ab88fe536b9d1f5af1e182161c3fd80f354",
         intel: "28aade7489f83db0d389336496f3107a7843c16ba2c29f6ebdac318e037d821a"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
