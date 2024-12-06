class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v1.1.1/flash-cat-cli-macos-1.1.1-x86_64.tar.gz"
      sha256 "c7f2b0a41ad113728cf5019b8ee98f58129d2c6bfb63e467ed5747bf35a569ca"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v1.1.1/flash-cat-cli-macos-1.1.1-aarch64.tar.gz"
      sha256 "ac1e8427d6cf84f820436e2ed263e0b3b73ad22bf62f5f74a6347f2f671706dc"
    end
  
    version "1.1.1"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  