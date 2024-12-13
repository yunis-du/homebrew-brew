class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.1/flash-cat-cli-macos-2.0.1-x86_64.tar.gz"
      sha256 "f75ad074405af6efbbc5307bc1eb466c5ae5e830411ede0ef5dbefa28a8ad2bd"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.1/flash-cat-cli-macos-2.0.1-aarch64.tar.gz"
      sha256 "d5968678835d83a4afbf0a68c59f4691c010ba458b43c08c02bb8ae98d1c0790"
    end
  
    version "2.0.1"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  