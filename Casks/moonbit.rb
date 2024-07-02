cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240702"
  sha256 arm:   "00aef4ee807e293176fddb1d67ab053343b519a80592482a13747cf0679119ec",
         intel: "a1ee61f82290e0638f4614fcda1afb86af0b6a4d80a44e705750795ada66f454"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
