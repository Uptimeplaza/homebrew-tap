class Callis < Formula
  desc "CLI for managing AI agent skills"
  homepage "https://github.com/Uptimeplaza/callis"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.2/callis-0.1.2-darwin-arm64.tar.gz"
      sha256 "19763d0f4dc768511baa058a2c330c6ad8a95cc467fdeb33f99c5ee69530877a"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.2/callis-0.1.2-darwin-amd64.tar.gz"
      sha256 "9102d0ed65c0a74fcb74a571527b5eebd2bf6f34684480edd68ab05ab6f90968"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.2/callis-0.1.2-linux-arm64.tar.gz"
      sha256 "7cfd7e99077aaad8c8778d9950afe0d36b8303a40c70bb4d97c604cb83e02573"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.2/callis-0.1.2-linux-amd64.tar.gz"
      sha256 "a2a9b05bd12cb9bafd659920f42359cf5dfcf4eccadfd4ca1378c6d5b709562e"
    end
  end

  def install
    bin.install "callis"
  end

  test do
    assert_match "callis", shell_output("#{bin}/callis --version")
  end
end
