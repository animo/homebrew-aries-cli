class AriesCli < Formula
  desc "A CLI tool for aries written in Rust"
  homepage "aries-cli.animo.id"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/animo/aries-cli/releases/download/0.1.0/aries-cli-macos-x86_64"
    sha256 "d7a5b94665e2cde439b6080abcfbea67205a33c7dadbb0bf743b61d7c9c8c1f1"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/animo/aries-cli/releases/download/0.1.0/aries-cli-macos-arm"
    sha256 "6a2cfeb51de2da2f98251ded8b1bfe211ef58c6af36b6b562eabd428999c34f4"
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
