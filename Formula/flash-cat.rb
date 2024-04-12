class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v0.1.0/flash-cat-macos-amd64.tar.gz"
      sha256 "522b058e3c5447f7d056033b038e0bfb57ccb8f5ad50ce0e75ed5ab0b0874f32"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v0.1.0/flash-cat-macos-arm64.tar.gz"
      sha256 "983c58d85162b35ee7ddf2d7e4cfe609b836f1f480f2d250687241260226a32e"
    end
  
    version "0.1.0"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat-macos-amd64/flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat-macos-arm64/flash-cat"
      end
    end
  
  end
  