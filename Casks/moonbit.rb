cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241115"
  sha256 arm:   "7d6fe8d93e20d1fd4060e78bf8e01fa6da7c99b5e4ae4ed8e8b18841de1cdec0",
         intel: "4b826d84dd99fc0aeef68c3c8c230ba90d35c870e1185ade66dd34761db45216"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
