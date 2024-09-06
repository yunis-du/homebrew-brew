class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/cli-v0.1.4/flash-cat-cli-macos-amd64.tar.gz"
      sha256 "348d22bcd3437cb546338e4cbc107d023b4ed4e015a0bcb757cf8065949a3837"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/cli-v0.1.4/flash-cat-cli-macos-arm64.tar.gz"
      sha256 "8d679f124477867da789ef5ae3e61acea3d6e91fe0d70a37e92c4ce2faf3b01d"
    end
  
    version "0.1.4"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  