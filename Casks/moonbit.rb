cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241119"
  sha256 arm:   "d62f41122b5fcada8568a0b9ec6cbbdcd178d74f49366d2f4bc2ca065473da58",
         intel: "e029ecee6196eddd97de4488e93eb012408accf4341b7fb435a8c4b06c9e9f77"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
