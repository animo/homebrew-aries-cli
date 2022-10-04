class AgentCli < Formula
  desc "A CLI tool for aries written in Rust"
  homepage "agent-cli.animo.id"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/animo/agent-cli/releases/download/v0.3.1/apple-x86_64-agent-cli"
    sha256 "ec38a073534f31f43887c063e7f2e3bad52a064dc5ef023442b8a29f08efc5f7"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/animo/agent-cli/releases/download/v0.3.1/apple-arm-agent-cli"
    sha256 "a20fe47ff89ccdaa1f9a0c9e756cc24b0c6fdeef1caed4fa932c2db0a552ca18"
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
