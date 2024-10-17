cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241017"
  sha256 arm:   "32c9186c8457f2f9d9c5b1899647c034af7b0b7864c57059181d26d46e641137",
         intel: "6f04b2afe7dcb4123ad61b8876bf0dc0725f3fdfca0a76269cf38c1ba3b3420e"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
