class AriesCli < Formula
  desc "A CLI tool for aries written in Rust"
  homepage "aries-cli.animo.id"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/animo/aries-cli/releases/download/0.1.0/aries-cli-macos-arm https://github.com/animo/aries-cli/releases/download/0.1.0/aries-cli-macos-x86_64"
    sha256 "7ad424f21d936919cea10a23d7f5f0a8c166d9cb7d5fed269487bcb283f65b3f"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/animo/aries-cli/releases/download/0.1.0/aries-cli-macos-arm https://github.com/animo/aries-cli/releases/download/0.1.0/aries-cli-macos-x86_64"
    sha256 "7ad424f21d936919cea10a23d7f5f0a8c166d9cb7d5fed269487bcb283f65b3f"
  end
 
  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "aries-cli-macos-arm" => "aries-cli"
    end
    if OS.mac? && Hardware::CPU.intel?
      bin.install "aries-cli-macos-x86_64" => "aries-cli"
    end
  end

  test do
    system "aries-cli --version"
  end
end
