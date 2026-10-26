class Vardrun < Formula
  desc "Issue tracking CLI for vardrun"
  homepage "https://github.com/Uptimeplaza/homebrew-tap"
  version "0.1.7"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.7/vardrun-0.1.7-darwin-arm64.tar.gz"
      sha256 "64b979181af31fce625139394325746b0493b69d042075a5efe94f00ca6381f7"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.7/vardrun-0.1.7-darwin-amd64.tar.gz"
      sha256 "925965c2b678bf744a420011ef002350566aab81a148443661051580ead458c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.7/vardrun-0.1.7-linux-arm64.tar.gz"
      sha256 "b1984e57fabc85240f670997c8b285f514b763303437a2461ef4427d98629920"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/vardrun-v0.1.7/vardrun-0.1.7-linux-amd64.tar.gz"
      sha256 "1c1d4f49e666327f11b2451dfd637143c34ab9052e83b8833b0146de626eb194"
    end
  end

  def install
    bin.install "vardrun"
  end

  test do
    assert_match "vardrun", shell_output("#{bin}/vardrun --version")
  end
end
