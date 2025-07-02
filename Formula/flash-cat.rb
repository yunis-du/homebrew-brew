class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.1.0/flash-cat-cli-macos-2.1.0-x86_64.tar.gz"
      sha256 "3bb32b1581b62006c3a9954028a5fd1bf232fca66e54a9cef609d4ee8c8d2978"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.1.0/flash-cat-cli-macos-2.1.0-aarch64.tar.gz"
      sha256 "81076235b65a9323f5301fcf3778ef9c0b6a5ddd08d620795483791338df5b02"
    end
  
    version "2.1.0"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  