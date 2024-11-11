cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241111"
  sha256 arm:   "428d0e730c1df6c06bc4b3213548ecc63c38a9dbf528d0f8f702f4ca2bba1806",
         intel: "4c781973b11d09d1881c9c51f219205227cbd2dbdf165229434955e3fb581e07"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
