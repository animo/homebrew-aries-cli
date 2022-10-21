class Siera < Formula
  desc "A CLI tool for aries written in Rust"
  homepage "siera.animo.id"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/animo/siera/releases/download/v0.1.0/apple-x86_64-siera"
    sha256 "ec38a073534f31f43887c063e7f2e3bad52a064dc5ef023442b8a29f08efc5f7"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/animo/siera/releases/download/v0.1.0/apple-arm-siera"
    sha256 "a20fe47ff89ccdaa1f9a0c9e756cc24b0c6fdeef1caed4fa932c2db0a552ca18"
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
