class AriesCli < Formula
  desc "A CLI tool for aries written in Rust"
  homepage "aries-cli.animo.id"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/animo/aries-cli/releases/download/v0.1.0/apple-x86_64-aries-cli"
    sha256 "6e68ae1e03605df102ef8169848a62f775382f298628b72562bb8125cc474b4c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/animo/aries-cli/releases/download/v0.1.0/apple-arm-aries-cli"
    sha256 "a34336d6210882201f30587cbf73d516d777039cdcd67fed3d0bc2a0313cf18a"
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
