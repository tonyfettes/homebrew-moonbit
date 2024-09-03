cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240902"
  sha256 arm:   "1cac54327b9fb6bcef43d0e51aa5695d7e68a251cadf16dbbb0e5d42684f1e57",
         intel: "568d93aad6a4dfc57244df13dbed64e36ba4dc678d5ac0f8521268a7ab6c08ff"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
