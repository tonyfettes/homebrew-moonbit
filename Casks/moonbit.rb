cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240712"
  sha256 arm:   "f2f931f99e3e6a20108fcc3c46ab68128e31809fef81431585b1a1b89931f747",
         intel: "d2c9041e73cc1ccb90f5a4121e88cf988a90cb314bbab619a8d9267a688b3d6c"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
