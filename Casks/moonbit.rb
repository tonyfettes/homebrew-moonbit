cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20240830"
  sha256 arm:   "e6dd1668b3250bd2559f0d962e3607e6140f0eabe9688f0db4e0cf165c89c5f4",
         intel: "0e74c96ffd29c26374f0afc487fe5ff5ecef5b0dbd0da8a36e870584733311e2"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
