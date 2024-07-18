cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240718"
  sha256 arm:   "271995d6acab4cfb24209eb4134d89699795b7a950b00a9fc353612eb32a7714",
         intel: "6db20e8114ddb01152daba0c3cb3860f61e835807347f8d85a5bfecca4615375"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
