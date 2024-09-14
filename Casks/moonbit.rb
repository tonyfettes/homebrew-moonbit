cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240914"
  sha256 arm:   "107ea556ea2749319685758b7629e994335bbc6b7b9e7d0f4eea2c59eb0179d0",
         intel: "0a43a476f858cc0ba122c0e88b192824904e5d1472482948bfa40aacde87d540"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
