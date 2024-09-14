class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v1.0.0/flash-cat-cli-macos-amd64.tar.gz"
      sha256 "ce925ea87bff906875d1bc81d1011b323d75be531fbdd92f33473af2e72be095"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v1.0.0/flash-cat-cli-macos-arm64.tar.gz"
      sha256 "2260feebc0c17e56d47e91965fd1c72f57a21d3dc6e8891369771ac04b499213"
    end
  
    version "1.0.0"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  