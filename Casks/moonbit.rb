cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240716"
  sha256 arm:   "d812729676dd6e39b7dcf5d55fdf058f9706190c8d2ea39d01b61d0fa968e3c6",
         intel: "27e7bdd9a128735f663044b4fac3c007643bf267a82c658e7698addf246133e5"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
