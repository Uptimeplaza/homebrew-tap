class Vardrun < Formula
  desc "Issue tracking CLI for vardrun"
  homepage "https://github.com/Uptimeplaza/homebrew-tap"
  version "0.1.4"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.4/vardrun-0.1.4-darwin-arm64.tar.gz"
      sha256 "897ab3499e1b9179d9b2de4a4d565eb7557dc9c959e4edeba4fd1153f27ef442"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.4/vardrun-0.1.4-darwin-amd64.tar.gz"
      sha256 "d22b88b1e8aa941fcaab5c306763c75ff3c0a78ae0faf62c06cfbf5a3106bf65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.4/vardrun-0.1.4-linux-arm64.tar.gz"
      sha256 "5c1e607a293a69ff48622a0911da2d3f0e05baadf4fde7ea0099589b6d0b2ab5"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.4/vardrun-0.1.4-linux-amd64.tar.gz"
      sha256 "a4f196e28b3b8795233df8f3aaefd55ea812234bfe8333839280b3b4dec9759f"
    end
  end

  def install
    bin.install "vardrun"
  end

  test do
    assert_match "vardrun", shell_output("#{bin}/vardrun --version")
  end
end
