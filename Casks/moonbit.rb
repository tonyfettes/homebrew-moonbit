cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240513"
  sha256 arm:   "de47d6bde9d14f96f768d5828937eb6ac3baf2a77d468d520d84d7807c1065bf",
         intel: "0fe0ed84fe2182b95b7ee54698a9facd671866d3cc0cfd655bc692b1f6dac121"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
