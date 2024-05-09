class Moonbit < Formula
  desc "Intelligent developer platform for Cloud and Edge using WASM"
  homepage "https://www.moonbitlang.com/"
  url "https://cli.moonbitlang.com/core.zip"
  version "20240430"
  sha256 "31bf19d197bf4eccce8992956f35ae2cd1e036b21143d65ca3762d65b2ba134f"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/tonyfettes/homebrew-moonbit/releases/download/moonbit-20240430"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "946ad5e7a8386bbf2460366d0ae645dc89679ebfe004ac8129074429aa4a756a"
    sha256 cellar: :any_skip_relocation, ventura:      "0cb23bf863cd3b713901e398f5106c11b8bda5395048fe64b3817d89f2c7b0a4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ac6b9795a760261f11cf9ccfa8856651de7de3dba14c962b366b62e1dbb94bf6"
  end

  on_macos do
    on_arm do
      resource "moon" do
        url "https://cli.moonbitlang.com/macos_m1/moon"
        sha256 "f1d8bb8f83649bfdbb5bd49677212780bbad239cd503bb2407881f896154513e"
      end
      resource "moon_cove_report" do
        url "https://cli.moonbitlang.com/macos_m1/moon_cove_report"
        sha256 "d8e571745ffb3b81aeaf0e780fabef6ec7b5c8a167614262acdf25a80a552415"
      end
      resource "moonc" do
        url "https://cli.moonbitlang.com/macos_m1/moonc"
        sha256 "6b7a6474ca5a3db5cf937212b01b8be97d6e6b2a51e9e0e5acb22a9e7592d67f"
      end
      resource "moondoc" do
        url "https://cli.moonbitlang.com/macos_m1/moondoc"
        sha256 "6d8f4d95e649e6db281d68ba4cd4af50ac795a52c7a37f15d915969950201db7"
      end
      resource "moonfmt" do
        url "https://cli.moonbitlang.com/macos_m1/moonfmt"
        sha256 "c9ab3f8894e3205eb5a36d9ae375eca735fe7921ee513402509ca0df235e0e38"
      end
      resource "mooninfo" do
        url "https://cli.moonbitlang.com/macos_m1/mooninfo"
        sha256 "1f694c5cbfe274b80e2d227b652b41d53909ae3b5644506080f03636bcf70be0"
      end
      resource "moonrun" do
        url "https://cli.moonbitlang.com/macos_m1/moonrun"
        sha256 "9fc9a7596e2e81a35f8ea0cbcd286f03be1fdb8de883a5dd9fb8fc63d9fb11f6"
      end
    end
    on_intel do
      resource "moon" do
        url "https://cli.moonbitlang.com/macos_intel/moon"
        sha256 "2cbdd1a3c2efc9d80a147b5bd399e94d0843c083ee3bd45c3bbe494e9491d458"
      end
      resource "moon_cove_report" do
        url "https://cli.moonbitlang.com/macos_intel/moon_cove_report"
        sha256 "a1fbe6afb6b5ae2787fd16a37561cf47267bd5bbd54cc5a9aa3b46ecfcbbf839"
      end
      resource "moonc" do
        url "https://cli.moonbitlang.com/macos_intel/moonc"
        sha256 "658ffcbafd96d2e8741a2a2a41b55867421837db70460294bd19d7a236339e35"
      end
      resource "moondoc" do
        url "https://cli.moonbitlang.com/macos_intel/moondoc"
        sha256 "24896f463953bcd46f87fdb6615e22db837c27310e1902a9be76f430a7a3682f"
      end
      resource "moonfmt" do
        url "https://cli.moonbitlang.com/macos_intel/moonfmt"
        sha256 "48e52318a585a25bd162c6ddc342d1ad7ceda31b71f21d3886d63a40dd2701de"
      end
      resource "mooninfo" do
        url "https://cli.moonbitlang.com/macos_intel/mooninfo"
        sha256 "4f51ff3cd3f726f64c9f4634400c50f180accb5adf773316af1985f2897018ac"
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
        sha256 "caa08ff1b0611a0dbb9051a38c7b600e59934ad72056d7f529a912d594c30684"
      end
      resource "moon_cove_report" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moon_cove_report"
        sha256 "3124c726bf2d2b3700d8bce4a3260d15878ae747eef1ed8643c548373da05cbc"
      end
      resource "moonc" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moonc"
        sha256 "c1f5016029ab4ec77d4bf15b4a830d7a8abe341ea9298571030626b341c63c77"
      end
      resource "moondoc" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moondoc"
        sha256 "9e4157647f5283e0980e7efbc8708ee6fe146b24fa560c4d336fccc20b0c74cc"
      end
      resource "moonfmt" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moonfmt"
        sha256 "bd122e859cd28b2c2da6b4f2cb5187ccc3811075930db30f922b354db61e92ff"
      end
      resource "mooninfo" do
        url "https://cli.moonbitlang.com/ubuntu_x86/mooninfo"
        sha256 "78a78ddd1487fc59386c5e9ba96b69d257a67d83d4c28926b7d8510b4be28465"
      end
      resource "moonrun" do
        url "https://cli.moonbitlang.com/ubuntu_x86/moonrun"
        sha256 "e0046f97bd6d7602efa36f8981fba9e133b180b08b796c2717dead75f9bd6847"
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
