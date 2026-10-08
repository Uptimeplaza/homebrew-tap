class Vardrun < Formula
  desc "Issue tracking CLI for vardrun"
  homepage "https://github.com/Uptimeplaza/homebrew-tap"
  version "0.1.6"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.6/vardrun-0.1.6-darwin-arm64.tar.gz"
      sha256 "db2e857099ba9850747ad1ac5905841bd4af172b382c0900317c64a6f2d06244"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.6/vardrun-0.1.6-darwin-amd64.tar.gz"
      sha256 "aed95d32c0980a43d9e904cff5cc677b409dfa704c155000b8dea2863dc27f8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.6/vardrun-0.1.6-linux-arm64.tar.gz"
      sha256 "1088402ceb91f0f1187d428d59014a53fd3d1c7bcf58040cc565b44c97a21e95"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.6/vardrun-0.1.6-linux-amd64.tar.gz"
      sha256 "a7e7a94a0477d2a6e2ff535e7d118e9843ee0f8cd2dd692cdc17806adda86482"
    end
  end

  def install
    bin.install "vardrun"
  end

  test do
    assert_match "vardrun", shell_output("#{bin}/vardrun --version")
  end
end
