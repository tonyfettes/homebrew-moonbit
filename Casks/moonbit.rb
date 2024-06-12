cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240612"
  sha256 arm:   "81b9172483966e2e8bf3b664a7f2a426c14a261c59883bd1e01caccc7c5fb356",
         intel: "c5306cc2088582e92281f1cde9d3c9b8687da0e623581784dcb9b93f48d75352"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
