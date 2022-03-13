class AriesCli < Formula
  desc "A CLI tool for aries written in Rust"
  homepage "https://github.com/animo/aries-cli"
  url "https://github.com/animo/aries-cli/archive/refs/tags/0.2.0.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "c014f4949a7d191ffde5cdee829d4f8aa0aaacb85551d929171b6c5c40bc0106"
  version "0.2.0"
 
  def install
    bin.install "aries-cli"
  end
end
