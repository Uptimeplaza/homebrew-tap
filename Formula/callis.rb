class Callis < Formula
  desc "CLI for managing AI agent skills"
  homepage "https://github.com/Uptimeplaza/callis"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.0/callis-0.1.0-darwin-arm64.tar.gz"
      sha256 "230ec4e86fbda8b81b5904f714ebb01a3b777a1670ea22596f951bd8ed3cca07"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.0/callis-0.1.0-darwin-amd64.tar.gz"
      sha256 "408717ee8d1c7abe7166c5cb141ebb3bc1d7daf17044041df20ea39b0fad0539"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.0/callis-0.1.0-linux-arm64.tar.gz"
      sha256 "f39dd9a033483de5e358180ed57ab05b2391af19910d44343a208f9e1a9248de"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.0/callis-0.1.0-linux-amd64.tar.gz"
      sha256 "794b7f60c93593f045f002d94c9aee2cbe24c0e4bd8d5bcf33f8bf66633afb94"
    end
  end

  def install
    bin.install "callis"
  end

  test do
    assert_match "callis", shell_output("#{bin}/callis --version")
  end
end
