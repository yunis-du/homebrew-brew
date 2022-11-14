class Pdh < Formula
  desc "send things from one computer to another"
  homepage "https://github.com/duyunzhi/pdh"
  url "https://github.com/duyunzhi/pdh/releases/download/v0.1.0/pdh-macos.tar.gz"
  sha256 "4a9a7875737e232cab114ac0022319fd8d88f199cc333249119160a90f32be42"
  version "0.1.0"
  def install
    bin.install "pdh"
  end
end
