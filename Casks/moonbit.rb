cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240603"
  sha256 arm:   "def6e1aa486267793c0105eade6d25f041aad19e52f4cffae00412288beb6c31",
         intel: "fc7ee3a79d7c1cf0feb1b42d9a04c1fe799a1f16ea0c13aa73bddb8eadc225e4"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
