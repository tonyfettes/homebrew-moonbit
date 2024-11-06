cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241106"
  sha256 arm:   "bd70707e927ac22a3963348047f91546c995a5938c1ba666ab021673c4912329",
         intel: "30786db707f5af4cce0a8ba11287c52aa8841b08ba47590b57f20e4a94eefa25"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
