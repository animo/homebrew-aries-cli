class AgentCli < Formula
  desc "A CLI tool for aries written in Rust"
  homepage "agent-cli.animo.id"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/animo/agent-cli/releases/download/v0.2.0/apple-x86_64-agent-cli"
    sha256 "fbe7f470662c9281ecac938e5e7aed5548d28fa26b6de7e81145fbc4c911d9e2"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/animo/agent-cli/releases/download/v0.2.0/apple-arm-agent-cli"
    sha256 "156e1ea199cc77da27fe97b61431fdeea40f46e93f07348f6cb746c554d73a89"
  end
 
  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "apple-arm-agent-cli" => "agent-cli"
    end
    if OS.mac? && Hardware::CPU.intel?
      bin.install "apple-x86_64-agent-cli" => "agent-cli"
    end
  end

  test do
    system "agent-cli --version"
  end
end
