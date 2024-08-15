cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240815"
  sha256 arm:   "0e408e0cd39bedf793f008ccf81165223432c0cf17631814158779d129937d68",
         intel: "6cab30a4cdab8d366b39bafe95467bc2ad08c539547595cfd7bcb3a0acfd4fd8"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
