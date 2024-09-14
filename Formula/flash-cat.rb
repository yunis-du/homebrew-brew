class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v1.0.0/flash-cat-cli-macos-amd64.tar.gz"
      sha256 "afb9f7f8a3b9f6e05f8c794d22e00aeb8a38e015ba76d2abe391310ee814b1ad"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v1.0.0/flash-cat-cli-macos-arm64.tar.gz"
      sha256 "59244013f8b3257e529425a4753932661362f9a30b1ed39c475bfe8b6d768169"
    end
  
    version "0.1.5"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  