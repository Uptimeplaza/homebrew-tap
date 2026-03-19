class Vardrun < Formula
  desc "Issue tracking CLI for vardrun"
  homepage "https://github.com/Uptimeplaza/homebrew"
  version "0.1.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew/releases/download/vardrun-v0.1.0/vardrun-0.1.0-darwin-arm64.tar.gz"
      sha256 "919b9f8d35185ae75ba435e425dff286059863bbaab65b42d19182a679747d7f"
    else
      url "https://github.com/Uptimeplaza/homebrew/releases/download/vardrun-v0.1.0/vardrun-0.1.0-darwin-amd64.tar.gz"
      sha256 "7b052ab1a621d931aeaceeae0a736eda66ff403211baf061977f4b6060dc9b7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew/releases/download/vardrun-v0.1.0/vardrun-0.1.0-linux-arm64.tar.gz"
      sha256 "1489127010c4bf943116eaeea1cc7160e83bb4cf11671f86a5a0c92f0520add1"
    else
      url "https://github.com/Uptimeplaza/homebrew/releases/download/vardrun-v0.1.0/vardrun-0.1.0-linux-amd64.tar.gz"
      sha256 "805628390aaaf4232b1e4ff9b2e086f9af9353af307d72f800b8bb47aa6e82f4"
    end
  end

  def install
    bin.install "vardrun"
  end

  test do
    assert_match "vardrun", shell_output("#{bin}/vardrun --version")
  end
end
