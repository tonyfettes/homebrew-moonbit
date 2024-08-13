cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240813"
  sha256 arm:   "7a52daba341759f35324e6dd34d32a78e9cc5f164be4e58b6df71d28f0f6ca63",
         intel: "a29f886766b501e516e265ebc8717054e592af983ac71161031a7e3996efbff5"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
