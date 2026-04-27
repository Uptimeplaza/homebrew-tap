class Vardrun < Formula
  desc "Issue tracking CLI for vardrun"
  homepage "https://github.com/Uptimeplaza/homebrew-tap"
  version "0.1.3"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.3/vardrun-0.1.3-darwin-arm64.tar.gz"
      sha256 "785e011909662ab4cb3d234e7123b0f99e5421ca2565048935edb719072434d1"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.3/vardrun-0.1.3-darwin-amd64.tar.gz"
      sha256 "a7aa4fd7c7c5b694f78a938d220f175f042f55b1a96f23c6be317f9cd2052ffb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.3/vardrun-0.1.3-linux-arm64.tar.gz"
      sha256 "5ef25035d487e979d5de19f0a57e85d0284ef57765d09d2a5f9acc5cb5c1c9da"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.3/vardrun-0.1.3-linux-amd64.tar.gz"
      sha256 "8e30ef57ae282644810ea5896b44cf63cf358bf90f723dc135dedc2583ee24da"
    end
  end

  def install
    bin.install "vardrun"
  end

  test do
    assert_match "vardrun", shell_output("#{bin}/vardrun --version")
  end
end
