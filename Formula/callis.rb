class Callis < Formula
  desc "CLI for managing AI agent skills"
  homepage "https://github.com/Uptimeplaza/callis"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.4/callis-0.1.4-darwin-arm64.tar.gz"
      sha256 "09f2cec58cfa147df6c857d105ecc32e47183a2e7f34d3c93aca99c51be4129f"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.4/callis-0.1.4-darwin-amd64.tar.gz"
      sha256 "49ceff25663d21c3ba5fc9b75d80c593b27aba15b37e10d8cc246221218f8bec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.4/callis-0.1.4-linux-arm64.tar.gz"
      sha256 "f1ffd6b12a6debc3ec380582bb1c416beb02ab06c7ecae11094ab7caba827bb0"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.4/callis-0.1.4-linux-amd64.tar.gz"
      sha256 "2fd081ececd761d7a17c6be645ba8eb4772e340bce64571c902a63a6c0e539df"
    end
  end

  def install
    bin.install "callis"
  end

  test do
    assert_match "callis", shell_output("#{bin}/callis --version")
  end
end
