class AriesCli < Formula
  desc "A CLI tool for aries written in Rust"
  homepage "aries-cli.animo.id"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/animo/aries-cli/releases/download/v0.1.0/apple-x86_64-aries-cli"
    sha256 "83ed04127f727c511353c0679bc9084622cb377a6520e2905cc440d4426c81c4"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/animo/aries-cli/releases/download/v0.1.0/apple-arm-aries-cli"
    sha256 "f3476a514c7d068b17fa769af84c62ce97a46b7cfa30a53ecb0d9b4f17fc6728"
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
