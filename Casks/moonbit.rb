cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240709"
  sha256 arm:   "8813c8cae8578993ad24c04126d65394ea6737097341d3ee06b0c132252eea92",
         intel: "8cac14df424f993a69a3ab234c868e52b17384d801c4b0e5e73d4a4d4588da8b"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
