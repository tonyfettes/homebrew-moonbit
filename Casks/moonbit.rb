cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241125"
  sha256 arm:   "051c88d3d820250b8b225daec1b3ad816e20b2289e312e15295343f9ff553b75",
         intel: "e5c16da865771c8fb8223467a5288b806815c3407f809181243dbac6ce841b09"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
