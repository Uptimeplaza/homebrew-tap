class Callis < Formula
  desc "CLI for managing AI agent skills"
  homepage "https://github.com/Uptimeplaza/callis"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.1/callis-0.1.1-darwin-arm64.tar.gz"
      sha256 "13a1174ba92fc37527e3a704082d99b991b64285e8863a8f58b2083d1e4731c1"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.1/callis-0.1.1-darwin-amd64.tar.gz"
      sha256 "fed99c451ebada2966d6670c7733a8d516b82d82a7914614e746db88db5a8dec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.1/callis-0.1.1-linux-arm64.tar.gz"
      sha256 "c022a4315aa40a588b99531970f6b9c67b35265d321355dde39c9b935c00b3ee"
    else
      url "https://github.com/Uptimeplaza/homebrew-tap/releases/download/callis-v0.1.1/callis-0.1.1-linux-amd64.tar.gz"
      sha256 "a2082a9049735a495ab5c66965f26fbc42b25be8a18f47b47786a699a266e59b"
    end
  end

  def install
    bin.install "callis"
  end

  test do
    assert_match "callis", shell_output("#{bin}/callis --version")
  end
end
