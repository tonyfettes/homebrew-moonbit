cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240806"
  sha256 arm:   "f453700237791df1a54f9915f088dbeb60f9634e4512a14a0eeadf6eb2f2aad9",
         intel: "349c5341a1f2384727b22e7f6b78744b4a0542294089d9e51e499782e21a16b6"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
