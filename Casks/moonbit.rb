cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240724"
  sha256 arm:   "2337c062a8ed5a1998df126614b4b091ff7b54686298618e8b70db2f28234f9d",
         intel: "af31d63318016694cb139b89727c4b15f35466cbf346e8e5adfc037267f4a4a4"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
