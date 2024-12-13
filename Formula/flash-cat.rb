class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.1/flash-cat-cli-macos-2.0.1-x86_64.tar.gz"
      sha256 "eb0781cba47e17bd2267258b47e07901a5777a61242ca735648e979c5e52b315"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.1/flash-cat-cli-macos-2.0.1-aarch64.tar.gz"
      sha256 "d4b60739cfd3d695ca91e6b4a71f8cddf700b873d3e5d662228e3046742a0dad"
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
  