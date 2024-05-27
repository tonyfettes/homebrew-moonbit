cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240527"
  sha256 arm:   "e29838667348e7fb0226fa8d61499706641986b68eae954306e4074e8764b152",
         intel: "5d79284123c0f145e922659f1c4f4fdfe328d9c0e82acfd5d431ea0f8470af89"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
