class AgentCli < Formula
  desc "A CLI tool for aries written in Rust"
  homepage "agent-cli.animo.id"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/animo/agent-cli/releases/download/v0.3.0/apple-x86_64-agent-cli"
    sha256 "9aee541003677d70ae73c9857fe170ec64da153596f375a346a30f68c471fbf7"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/animo/agent-cli/releases/download/v0.3.0/apple-arm-agent-cli"
    sha256 "3684e2aeb876bdaeae768367bef4e4f5da1dbd4664df17d310454b2e79687a48"
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
