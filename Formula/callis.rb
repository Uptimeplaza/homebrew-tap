class Callis < Formula
  desc "CLI for managing AI agent skills"
  homepage "https://github.com/Uptimeplaza/callis"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.3/callis-0.1.3-darwin-arm64.tar.gz"
      sha256 "77ee5f7f94f488fdb25b00d29de6d95f018def4bbc34b7b58d4600b7b7fbf0e4"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.3/callis-0.1.3-darwin-amd64.tar.gz"
      sha256 "436ee2028b195ef6bb510d2fea604d8b19c5ee167d87efb99a8dbfd9d1cfffc1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.3/callis-0.1.3-linux-arm64.tar.gz"
      sha256 "0bd99240c8eef4c20359a55d84e63e2cfc7b3fc7d0a508cfc8f96b686ced4661"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.3/callis-0.1.3-linux-amd64.tar.gz"
      sha256 "434dbff0eec40901b4c38e0de23c90946953cc832230d492a36004c18d01aff5"
    end
  end

  def install
    bin.install "callis"
  end

  test do
    assert_match "callis", shell_output("#{bin}/callis --version")
  end
end
