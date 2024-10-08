cask "moonbit" do
  arch arm:   "macos_m1",
       intel: "macos_intel"

  version "0.1.20241008"
  sha256 arm:   "8b967623dddae0b04b8c9974b3aa4c33d418d66518fa04f8d3a3c46a449150da",
         intel: "56dc875090d1678e558e4478988cb7569774f8f925a461799f8500e74768702c"

  url "https://cli.moonbitlang.com/#{arch}/moon"
  name "MoonBit"
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"

  binary "moon"
end
