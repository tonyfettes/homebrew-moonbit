cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240827"
  sha256 arm:   "856d05f005013c4f2a724017816f77256dbc12150e5b791212aad3cde316fdd7",
         intel: "ff68dc6525c3ccdaed7202318c50b8bcb118d0cf895a4bd483ac1a478f41731f"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
