class Vardrun < Formula
  desc "Issue tracking CLI for vardrun"
  homepage "https://github.com/Uptimeplaza/vardrun"
  version "0.1.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/vardrun/releases/download/v0.1.0/vardrun-0.1.0-darwin-arm64.tar.gz"
      sha256 "15ae4b911becb759fc959e9097f9b0b3370eaa087efbbbe95a0966afa5f7bcf3"
    else
      url "https://github.com/Uptimeplaza/vardrun/releases/download/v0.1.0/vardrun-0.1.0-darwin-amd64.tar.gz"
      sha256 "b87db8ceaf6855529e2fdcf776dbcf996b05c85b35f450c220996a364cb05847"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/vardrun/releases/download/v0.1.0/vardrun-0.1.0-linux-arm64.tar.gz"
      sha256 "07cfa20014d2285a921fbc5a03920c8c1cc7ff7eeed74f61a36d6ffb9c7c40e8"
    else
      url "https://github.com/Uptimeplaza/vardrun/releases/download/v0.1.0/vardrun-0.1.0-linux-amd64.tar.gz"
      sha256 "844b3b38b3631675a21d0e7c93f52b79f060d9c0fb24017e55d040ed3c69921b"
    end
  end

  def install
    bin.install "vardrun"
  end

  test do
    assert_match "vardrun", shell_output("#{bin}/vardrun --version")
  end
end
