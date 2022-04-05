class AriesCli < Formula
  desc "A CLI tool for aries written in Rust"
  homepage "aries-cli.animo.id"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/animo/aries-cli/releases/download/v0.1.0/apple-x86_64-aries-cli"
    sha256 "d8e4fcd163d059a874f47dfc4f3a68a436db1aedf70391b09fa2c24bf9f88ab0"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/animo/aries-cli/releases/download/v0.1.0/apple-arm-aries-cli"
    sha256 "b99ac5a671774fcf327ec2c6b27cf9b8a157578ff24125863b5c7f648b22b70a"
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
