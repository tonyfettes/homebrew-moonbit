cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240611"
  sha256 arm:   "90fb632042f6225ce42976d19a4f3018a1726ac8fea58eeb8ea2cb2403db3dc6",
         intel: "e8149bc63fde0e85d99b4abbd93dedc9e3ee8725b28802d41f5c6b33fefcc281"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
