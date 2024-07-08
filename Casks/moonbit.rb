cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240708"
  sha256 arm:   "a30098ec618b5b2bdd085da9744448da3463494b949701b7acbfdf2e2743cd86",
         intel: "fce3b4faef70dc9d9d64bf2521f39f69d6941dad626fa6ec350aa709fd3a8390"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
