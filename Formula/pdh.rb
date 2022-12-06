class Pdh < Formula
  desc "send things from one computer to another"
  homepage "https://github.com/duyunzhi/pdh"
  url "https://github.com/duyunzhi/pdh/releases/download/v0.1.2/pdh-macos.tar.gz"
  sha256 "c1c0ff13805cec00fb7b1ece26c6ef69fd2543d009a3738d60fbb4a2f038901c"
  version "0.1.2"
  def install
    bin.install "pdh"
  end
end
