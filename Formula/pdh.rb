class Pdh < Formula
  desc "send things from one computer to another"
  homepage "https://github.com/duyunzhi/pdh"
  url "https://github.com/duyunzhi/pdh/releases/download/v0.1.1/pdh-macos.tar.gz"
  sha256 "d4e01481e49e45b3c38162ba29b0235d4f38de2c8dc40151bd107b131944500d"
  version "0.1.1"
  def install
    bin.install "pdh"
  end
end
