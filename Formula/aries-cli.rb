class AriesCli < Formula
  desc "A CLI tool for aries written in Rust"
  homepage "aries-cli.animo.id"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/animo/aries-cli/releases/download/0.1.0/aries-cli-macos-x86_64"
    sha256 "f1c1d0889c9cb9e9932003b2feb3dd3944dd96cad7a01de98acff6497271b463"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/animo/aries-cli/releases/download/0.1.0/aries-cli-macos-arm"
    sha256 "c57d2d087b35e2804ef0478e5061a8d5516a942a6f11b4d13f7f591a22826461"
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
