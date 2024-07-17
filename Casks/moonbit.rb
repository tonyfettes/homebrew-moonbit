cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240717"
  sha256 arm:   "e2a8832f2b17e75d06dd0d0bc3b90cbb9935078e763f93cb5590ea199d0be8c8",
         intel: "bbc121c31a7ddb7a3f32f3da18447fb07c7da50cdb6fcb6e0f16f95a86e6d458"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
