cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240920"
  sha256 arm:   "f1f4f9ef1d084e9df68e8dd6ea6671a33bbf6ad91733169297dfd24dca2b2b5c",
         intel: "a499e20d2b00522d7884f1affb2e487b91dda5c7f11c782b046629920c7f5427"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
