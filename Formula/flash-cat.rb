class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/cli-v0.1.3/flash-cat-cli-macos-amd64.tar.gz"
      sha256 "6e92d34b5dc57f824c1ebae7d806ba36938cabda9f98143e7379d6416ab9c82d"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/cli-v0.1.3/flash-cat-cli-macos-arm64.tar.gz"
      sha256 "c9e3900fd97f274af65ad4fb24925d529af2884696a842b8aea213d2bae8df07"
    end
  
    version "0.1.3"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  