cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240719"
  sha256 arm:   "7d73fc27169da955f4a83d4e66669f8580c0bd4da1805b5cf47e2e3e04698acb",
         intel: "adca8fc424a69308a710ae82ebe027e9987e6d8e99aa887908882963d7211002"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
