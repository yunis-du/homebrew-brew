class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.4/flash-cat-cli-macos-2.0.4-x86_64.tar.gz"
      sha256 "7207fdc2fb6506d21120ce236e3dce5280fa898e70426e502b23110df2002654"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.4/flash-cat-cli-macos-2.0.4-aarch64.tar.gz"
      sha256 "ac0f006ea996a7f6c34ff3e51c1993e15d4f62f0b400f90d4ccdac0f1c52b637"
    end
  
    version "2.0.4"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  