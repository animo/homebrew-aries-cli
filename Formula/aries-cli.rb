class AriesCli < Formula
  desc "A CLI tool for aries written in Rust"
  homepage "aries-cli.animo.id"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/animo/aries-cli/releases/download/0.1.0/aries-cli-macos-x86_64"
    sha256 "5ece61b7080ce422ed3faff5158c59673e41ecc8376f01977608b5c3e108eb51"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/animo/aries-cli/releases/download/0.1.0/aries-cli-macos-arm"
    sha256 "40cbdd966b1be7d85627ca6ceeb1df4a36c79164c0d98ab8fd955dc2c27861aa"
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
