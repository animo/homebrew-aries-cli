class AriesCli < Formula
  desc "A CLI tool for aries written in Rust"
  homepage "aries-cli.animo.id"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/animo/aries-cli/releases/download/v0.1.0/apple-x86_64-aries-cli"
    sha256 "83603ff1c4405a3eeaffc70805c9f19e15cfd5a55ed49e013d0680a4e4eba259"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/animo/aries-cli/releases/download/v0.1.0/apple-arm-aries-cli"
    sha256 "a0486aba9fcfce1d037f43f81a496e24a78f7f4e06c5b95ac7658ef8004df3b8"
  end
 
  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "apple-arm-aries-cli" => "aries-cli"
    end
    if OS.mac? && Hardware::CPU.intel?
      bin.install "apple-x86_64-aries-cli" => "aries-cli"
    end
  end

  test do
    system "aries-cli --version"
  end
end
