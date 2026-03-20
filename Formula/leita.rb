class Leita < Formula
  desc "Domain registration checker via RDAP"
  homepage "https://github.com/Uptimeplaza/homebrew-tap"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/leita-v0.1.0/leita-0.1.0-darwin-arm64.tar.gz"
      sha256 "38d85dae45d8f82c91fdcc1f9d0625d823009fda9b1b0388d81f0302031882d0"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/leita-v0.1.0/leita-0.1.0-darwin-amd64.tar.gz"
      sha256 "a2090b70b95677242b6c66b59b5ae3be96924c6a75edc5292c54329c322a1774"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/leita-v0.1.0/leita-0.1.0-linux-arm64.tar.gz"
      sha256 "088b797a9bffcc9f848f7ac77f7c3c5a901f251b2aafd9a3ed33bdfeae81e515"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/leita-v0.1.0/leita-0.1.0-linux-amd64.tar.gz"
      sha256 "24c878a4d34672e873764bd2e94a3b48d77744fccac7272d2f145777f02f6ece"
    end
  end

  def install
    bin.install "leita"
  end

  test do
    assert_match "leita", shell_output("#{bin}/leita --version")
  end
end
