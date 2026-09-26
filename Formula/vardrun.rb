class Vardrun < Formula
  desc "Issue tracking CLI for vardrun"
  homepage "https://github.com/Uptimeplaza/homebrew-tap"
  version "0.1.5"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.5/vardrun-0.1.5-darwin-arm64.tar.gz"
      sha256 "79884dbd1f19c896cde750bcc1d316deabae9b2bbb24c9b9dee96ce56216d8b2"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.5/vardrun-0.1.5-darwin-amd64.tar.gz"
      sha256 "a53ebe3d78c380b285e86dc683d6e8d413274ac7a311308e6937745b7f23c5d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.5/vardrun-0.1.5-linux-arm64.tar.gz"
      sha256 "5da5e9b0d744a9c8a6c7e189e3fdadf0e366e3b23b4fcfed2805d27e7fcaffce"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.5/vardrun-0.1.5-linux-amd64.tar.gz"
      sha256 "85bcb7b1e24d8826afcbb8354510617a1574aafecaf5543425de7b8575ba785d"
    end
  end

  def install
    bin.install "vardrun"
  end

  test do
    assert_match "vardrun", shell_output("#{bin}/vardrun --version")
  end
end
