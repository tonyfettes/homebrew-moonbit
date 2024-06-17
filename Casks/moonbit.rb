cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240617"
  sha256 arm:   "9d3c08d938dd9f93ce032f2a140521adbb298267620360a2b5f8fc3c6417e915",
         intel: "ea44a4dbae088c7acc7e8f37a5b7554fa0012838fab7b1435abf7b1460b06d1c"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
