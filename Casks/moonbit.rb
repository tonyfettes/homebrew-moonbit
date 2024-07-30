cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240730"
  sha256 arm:   "5d14b996915eb1bfd103b08bc08465a50c9a81b220b3e7e79a0fcf1c053e589f",
         intel: "f8daa9c0cecaebecaa9ae3a5bc2a1799a4dd38e95f7f062d360c5f5616359dc5"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
