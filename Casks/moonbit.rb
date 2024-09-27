cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240924"
  sha256 arm:   "f1998ee76b3103c2a7b16c5bcb70c76672f50b03e42e762df89bbfc72499b31e",
         intel: "d019d80396eab0f11dbb2706a691d0c74631403268e7269b4507d15fa704a530"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
