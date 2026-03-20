class Vardrun < Formula
  desc "Issue tracking CLI for vardrun"
  homepage "https://github.com/Uptimeplaza/homebrew-tap"
  version "0.1.2"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.2/vardrun-0.1.2-darwin-arm64.tar.gz"
      sha256 "a2dcc3d91acfec17581b0c7e93874dfac245ff9e1c4898b380e04e2deb597015"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.2/vardrun-0.1.2-darwin-amd64.tar.gz"
      sha256 "ea7272ff653db5a5d00ef22eea46e66b316465ebbe1bbb851dacab9e1dfde010"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.2/vardrun-0.1.2-linux-arm64.tar.gz"
      sha256 "ab18f965087d83013ace7a270347f6f96fb8b7891e3e22530a7f9a02b61e7933"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.2/vardrun-0.1.2-linux-amd64.tar.gz"
      sha256 "75417a97896923d908928e5e1069b05665c8be40d15af7ac258216a483b70bf4"
    end
  end

  def install
    bin.install "vardrun"
  end

  test do
    assert_match "vardrun", shell_output("#{bin}/vardrun --version")
  end
end
