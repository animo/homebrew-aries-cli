class AriesCli < Formula
  desc ""
  homepage ""
  url "https://drive.google.com/uc?export=download&id=11Wt7s-yPaq8F2TV8uDhcL8MdGnAoJGz6"
  sha256 "8615e62fd9250480383763c4e5f42896d54013ffcfdc7c4393808e2a24759228"
  license ""

  def install
    bin.install "aries-cli"
  end

  test do
    system "true"
  end
end
