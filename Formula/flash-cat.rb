class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.1/flash-cat-cli-macos-2.0.1-x86_64.tar.gz"
      sha256 "4d3c33ed02ebae60cc130bea2c61775ca1417198fc4de09b2491b9fdf0a06abb"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.1/flash-cat-cli-macos-2.0.1-aarch64.tar.gz"
      sha256 "c6cea97d282a2e64335b15935759f1752f603b00d6e0c3d91bc61578651e5edc"
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
  