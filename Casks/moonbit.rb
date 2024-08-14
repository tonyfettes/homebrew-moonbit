cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240814"
  sha256 arm:   "65f5fdb301304d6ceb95173c5968ce4d5b579829341d056051ec48a2cb71779c",
         intel: "83d916bea784ffa3e5390ebbbc6c1d11d84c3042840f5f4af2bdd3e87bd4e18f"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
