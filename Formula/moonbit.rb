class Moonbit < Formula
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"
  url "https://cli.moonbitlang.com/core.zip"
  version "20240430"
  sha256 "31bf19d197bf4eccce8992956f35ae2cd1e036b21143d65ca3762d65b2ba134f"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/tonyfettes/homebrew-moonbit/releases/download/moonbit-20240422"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "6fbb1e146cec7d5d7594edc154a4f85a107b772af34981b6ca8a0fa907edec65"
    sha256 cellar: :any_skip_relocation, ventura:      "11755831310d96b80510e4b6c5dfa39a59cd90a49f6cf127b93ea3c37cd2412b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "02833c3d9144112c2258e2ef35e8fc72413f32fea026a05445a190ace186eaf2"
  end

  on_macos do
    on_arm do
      resource "moon" do
        url "https://cli.moonbitlang.com/macos_m1/moon"
        sha256 "27f4c86e6d17e553930244c5056e0a9fb1c97147f3fa37c6a08c8864d9a531f8"
      end
      resource "moon_cove_report" do
        url "https://cli.moonbitlang.com/macos_m1/moon_cove_report"
        sha256 "adcd25b7c076bdfd4670226e378aece8f9a880875f2e63688a8131395bae8560"
      end
      resource "moonc" do
        url "https://cli.moonbitlang.com/macos_m1/moonc"
        sha256 "d2abf94cfcf987e91d32e3f47e23c638d963f975bbcfaf75d5b6fc3038b4dc77"
      end
      resource "moondoc" do
        url "https://cli.moonbitlang.com/macos_m1/moondoc"
        sha256 "0135c2fd5b71bf7f35fd33a6d14784ef7c0207e604fc4093e5a6d72777c863ed"
      end
      resource "moonfmt" do
        url "https://cli.moonbitlang.com/macos_m1/moonfmt"
        sha256 "432e26a64980b7d3442909c0b31e52160bb68444ab7ac3dcb1b6f9d32f075dd7"
      end
      resource "mooninfo" do
        url "https://cli.moonbitlang.com/macos_m1/mooninfo"
        sha256 "783519b1eb2da6005849141790112942ecf9139673487c97bf02d0f29905eaf1"
      end
      resource "moonrun" do
        url "https://cli.moonbitlang.com/macos_m1/moonrun"
        sha256 "9fc9a7596e2e81a35f8ea0cbcd286f03be1fdb8de883a5dd9fb8fc63d9fb11f6"
      end
    end
    on_intel do
      resource "moon" do
        url "https://cli.moonbitlang.com/macos_intel/moon"
        sha256 "c7443d908e6751189a9469bcd5bcb524257f90183cb3409836ec47874e92c2ea"
      end
      resource "moon_cove_report" do
        url "https://cli.moonbitlang.com/macos_intel/moon_cove_report"
        sha256 "11c9e579652454038532ad5aa46322675cd98cde0d782567ab088138ea6d2ebc"
      end
      resource "moonc" do
        url "https://cli.moonbitlang.com/macos_intel/moonc"
        sha256 "28268776cad914d5da27a149959822d54bbf88d62014ea42560713a66e492fad"
      end
      resource "moondoc" do
        url "https://cli.moonbitlang.com/macos_intel/moondoc"
        sha256 "b9fcac32c656dbc0189f01c47055cbafaf23ff7b9843402710af17291ce38310"
      end
      resource "moonfmt" do
        url "https://cli.moonbitlang.com/macos_intel/moonfmt"
        sha256 "e24ad2ab6aa2a5119436ec51b86126781c29e95e8576b1094834630228e0f31d"
      end
      resource "mooninfo" do
        url "https://cli.moonbitlang.com/macos_intel/mooninfo"
        sha256 "9a54d1adbc7c5a73ddf053a551cffa0e6e3284df657120da4f0431fd69dd2b02"
      end
      resource "moonrun" do
        url "https://cli.moonbitlang.com/macos_intel/moonrun"
        sha256 "6252140313c460cde4bc680b82bcbd384c3775980e8a2d1b529cdbf40e6b2a80"
      end
    end
  end

  on_linux do
    on_intel do
      resource "moon" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moon"
        sha256 "3652798d2a9107c6c2053bda2554f80c694fc0066673dfe3a31d7281f64e6ec8"
      end
      resource "moon_cove_report" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moon_cove_report"
        sha256 "23a86373573deb8b4f7e4b611aa696414944897f0817f14462753f78af25203f"
      end
      resource "moonc" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moonc"
        sha256 "4f99e0e0a1acb58ef3cc0a9022387b2b0cc86e201a8aaaa60cc4434d7e7163a9"
      end
      resource "moondoc" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moondoc"
        sha256 "cbc48773b6373099d98d3abd9a975acca1425d928c153d9e6a9258751b711bfc"
      end
      resource "moonfmt" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moonfmt"
        sha256 "f851b7c40ee020c5313e1e7230817ab3e84d57700e90e484b3da3776d438b618"
      end
      resource "mooninfo" do
        url "https://cli.moonbitlang.com/ubuntu_x86/mooninfo"
        sha256 "9d62dd9af9330178ccc8f5d0bbb0cb0ba9bf995e158ba5e29ba0f30649a97f2e"
      end
      resource "moonrun" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moonrun"
        sha256 "b3253676dde5e43c572203702c303de935d586d0e150c7c1cd97435f12577d30"
      end
    end
  end

  resource "index" do
    url "https://mooncakes.io/git/index",
      using:  :git,
      branch: "main"
  end

  def install
    resource("moon").stage do
      chmod 0555, "moon"
      libexec.install "moon"
    end
    (bin/"moon").write <<~EOS
      #!/usr/bin/env sh

      MOON_HOME="${MOON_HOME:-#{pkgshare}}"
      export MOON_HOME

      #{libexec}/moon "$@"
    EOS
    resource("moon_cove_report").stage do
      bin.install "moon_cove_report"
    end
    resource("moonc").stage do
      bin.install "moonc"
    end
    resource("moondoc").stage do
      bin.install "moondoc"
    end
    resource("moonfmt").stage do
      bin.install "moonfmt"
    end
    resource("moonrun").stage do
      bin.install "moonrun"
    end
    resource("index").stage do
      (pkgshare/"registry/index/user").install Dir["*"]
    end
    (pkgshare/"lib/core").install Dir["*"]
  end

  def post_install
    cd pkgshare/"lib/core" do
      system "moon", "bundle", "--all"
    end
  end

  test do
    system "#{bin}/moon", "version"
    system "#{bin}/moon", "new", "hello"
    cd "hello" do
      system "#{bin}/moon", "build"
      system "#{bin}/moon", "run", "main"
    end
  end
end
