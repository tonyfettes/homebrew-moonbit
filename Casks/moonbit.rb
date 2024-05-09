cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "20240422"
  sha256 arm:   "f1d8bb8f83649bfdbb5bd49677212780bbad239cd503bb2407881f896154513e",
         intel: "2cbdd1a3c2efc9d80a147b5bd399e94d0843c083ee3bd45c3bbe494e9491d458"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
