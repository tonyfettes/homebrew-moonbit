cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241014"
  sha256 arm:   "35c97a93a890028f0f172c0a7804c40fa0a32ce9f0f78d6d9224b1072b4345ed",
         intel: "41376a7407248e5952fae8c71b0ff43445d4cd6e40ae520e5132dbd936ac4de4"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
