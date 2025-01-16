class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.3/flash-cat-cli-macos-2.0.3-x86_64.tar.gz"
      sha256 "4f9bbf3d4a82064de0b2452f106c2d3c791fb48e7df869d4a0ee6ef9c4647c58"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.3/flash-cat-cli-macos-2.0.3-aarch64.tar.gz"
      sha256 "bf548963b11354d65eaac41bd5a95fdddfe9dae2489a2c32e444c6593b72f96b"
    end
  
    version "2.0.3"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  