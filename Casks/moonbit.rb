cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240816"
  sha256 arm:   "12532962f91a10894d5d35d21de2bdd636680072d72c28785523ccebf2c93750",
         intel: "7895cba139010cd5d83ede1e8636b00fa022b58e80bab71a8b6ed14b8c7e5922"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
