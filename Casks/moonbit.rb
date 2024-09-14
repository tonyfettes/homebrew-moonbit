cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240914"
  sha256 arm:   "b4fbd9c3a42e15e6e0048f8d36820ac04be0c722fe720884da47694feff4eae9",
         intel: "5fb641cbefb3baf87eb5fca4d46edf527b28c310f0f0b1824df2bc9cf8c19e3e"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
