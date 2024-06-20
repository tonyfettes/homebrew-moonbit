cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240617"
  sha256 arm:   "e1cc2149fbe6e195006e8e495d0bca008570421fe28ed626a7603f022b2c60da",
         intel: "f6651952051aa9d49519027938a08546ade8e871da3d46da4a1934d168a6e993"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
