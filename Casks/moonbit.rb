cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241209"
  sha256 arm:   "4108b6e734f1d65ff5e0ebf386306d8e0652323435ad0c4269ac26211fdffd97",
         intel: "f8efaec5c5bc9609034e8d397cf40328b6498e6f8c449e15911fcae7699a2f85"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
