cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240520"
  sha256 arm:   "a5e101515ff1debf07590ca01f8bbd6ed2b4f948418c79c3aa5ccce9d503d556",
         intel: "3c52ad2107530294db7ffd97f9f8ae185c09a648abf726ca41971341fb638211"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
