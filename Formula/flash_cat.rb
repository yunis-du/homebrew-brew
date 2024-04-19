class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v0.1.1/flash-cat-cli-macos-amd64.tar.gz"
      sha256 "96a27af20c3516edd849c46c1c7a0d83f801e54829bde8846449e7f076c4591f"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v0.1.1/flash-cat-cli-macos-arm64.tar.gz"
      sha256 "4ff11a286e6b9807b6cc3cf475855b5ae5b3a129e6ccdef2aae9662d4452b926"
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
  