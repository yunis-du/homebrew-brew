class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v1.1.0/flash-cat-cli-macos-amd64.tar.gz"
      sha256 "b4bb34132543f3ca9411104709191887ec06f5a7e87642cbfa7fd14a71c0292c"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v1.1.0/flash-cat-cli-macos-arm64.tar.gz"
      sha256 "3041f9b36287c3709393b3146631a0b1bc2f4ff45054d8cfe2ec7109233acca2"
    end
  
    version "1.1.0"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  