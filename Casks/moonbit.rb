cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240819"
  sha256 arm:   "0465d946de3006f4781f358b0ebd3bf1b2825db552540e0daf13f8914ef86a91",
         intel: "6b37c426adff67d018c7e3018af69e01eff5a37afc3c5d6d4f7156dd5fc3919f"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
