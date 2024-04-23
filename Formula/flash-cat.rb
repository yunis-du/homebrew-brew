class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v0.1.1/flash-cat-cli-macos-amd64.tar.gz"
      sha256 "5b8f5ed47d356615eb4d61ac76e35c733078a52010f9cba28a7dac6d3339fe09"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v0.1.1/flash-cat-cli-macos-arm64.tar.gz"
      sha256 "c8481b935413327664e78df08d791e39adbb758296018ab7a7296387f74b2dbb"
    end
  
    version "0.1.1"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  