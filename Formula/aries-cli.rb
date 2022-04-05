class AriesCli < Formula
  desc "A CLI tool for aries written in Rust"
  homepage "aries-cli.animo.id"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/animo/aries-cli/releases/download/v0.1.0/apple-x86_64-aries-cli"
    sha256 "-"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/animo/aries-cli/releases/download/v0.1.0/apple-arm-aries-cli"
    sha256 "5f26b9505c1d404afcc683a5c004050dae556dcff6fa83c28c406f3a96a2737e"
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
