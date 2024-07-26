cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240725"
  sha256 arm:   "872aedd579be8e278a36b48e3b30e6bd38fd5323473e6c7953d64e62a68ae748",
         intel: "0812c8dbcbea0ba9867cd21e0c56f69061d88e036ff3b96f6c3b617aacd4efd5"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
