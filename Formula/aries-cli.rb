class AriesCli < Formula
  desc ""
  homepage ""
  license ""

  if OS.mac? && Hardware::CPU.intel?
    url "https://drive.google.com/uc?export=download&id=11Wt7s-yPaq8F2TV8uDhcL8MdGnAoJGz6"
    sha256 "8615e62fd9250480383763c4e5f42896d54013ffcfdc7c4393808e2a24759228"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://drive.google.com/uc?export=download&id=1YyaTYD5d67KSFFvwF3T7g_0LhcnPGKSH"
    sha256 "ab5ab666058f0875ec8ddaf89561aa7bc532f0dce01a36714300b7bdbb38069d"
  end
 
  def install
    bin.install "aries-cli"
  end

  test do
    system "aries-cli --version"
  end
end
