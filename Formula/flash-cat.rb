class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v1.1.1/flash-cat-cli-macos-1.1.1-x86_64.tar.gz"
      sha256 "caa8cf83e206bf1aeec8bc7dabf06c09e8031decc9cf6a9ebc74f640fd3d2b72"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v1.1.1/flash-cat-cli-macos-1.1.1-aarch64.tar.gz"
      sha256 "6466391f3923fa875bd42bc504595badb8b569eda5da88330c8a6d2a1ab776bc"
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
  