class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
    version "2.1.9"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v#{version}/flash-cat-cli-macos-#{version}-x86_64.tar.gz"
      sha256 "e798e2f4716e7a1b9d529b9ecc2cd2879ff59af51409fc36a78e05b3fa1bcb7d"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v#{version}/flash-cat-cli-macos-#{version}-aarch64.tar.gz"
      sha256 "d993058c68f28af0966509723338a17a9ec696a1fb9e70f68598790f1ec2a402"
    end
  
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  