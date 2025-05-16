class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.6/flash-cat-cli-macos-2.0.6-x86_64.tar.gz"
      sha256 "56aeb0e626c182a537f7064f0febe88bf97371ab866a07ae6892563c6d851bf7"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.6/flash-cat-cli-macos-2.0.6-aarch64.tar.gz"
      sha256 "f3215be01eee88483fd9e99134bc1bcdb20e22d8ed51a450dada0676a4ad8f09"
    end
  
    version "2.0.6"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  