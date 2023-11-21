class Siera < Formula
  desc "A CLI tool for aries written in Rust"
  homepage "siera.animo.id"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/animo/siera-cli/releases/download/v0.2.0/apple-x86_64-siera"
    sha256 "aa6e81d540a422e1ee8966668913ff7da9785fcf63a2bc2b7786b9fbe075f14e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/animo/siera-cli/releases/download/v0.2.0/apple-arm-siera"
    sha256 "b611865d1ad86263a4c52069fdfbd6bee386f2a8519d2f1dd89eaba25c8e1849"
  end
 
  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "apple-arm-siera" => "siera"
    end
    if OS.mac? && Hardware::CPU.intel?
      bin.install "apple-x86_64-siera" => "siera"
    end
  end

  test do
    system "siera --version"
  end
end
