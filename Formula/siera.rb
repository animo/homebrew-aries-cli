class Siera < Formula
  desc "A CLI tool for aries written in Rust"
  homepage "siera.animo.id"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/animo/siera/releases/download/v0.1.0/apple-x86_64-siera"
    sha256 "3a95f874a8c343dcd46eff3881afd812f6b55ef39d7a57889f43cb3f7e8a69f8"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/animo/siera/releases/download/v0.1.0/apple-arm-siera"
    sha256 "6bcf597d2b76cdc504c67f4d96a020b99fee36b73b2d5c4dd56511c33a7a9603"
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
