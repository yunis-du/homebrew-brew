class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v1.1.2/flash-cat-cli-macos-1.1.2-x86_64.tar.gz"
      sha256 "ccab1b6b37f16d8cdb407f7073095edef9797978f34164bf669016dafd610fb7"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v1.1.2/flash-cat-cli-macos-1.1.2-aarch64.tar.gz"
      sha256 "a5c53ec3af88b60bd4bbc1bb3f9244973b085e5c46be8bb3876a3432935b8476"
    end
  
    version "1.1.2"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  