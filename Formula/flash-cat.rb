class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.2/flash-cat-cli-macos-2.0.2-x86_64.tar.gz"
      sha256 "1f4cb1cb514b8e8152f53ee2714d61607c6aaecf8cffae379a41ebb9216af623"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.2/flash-cat-cli-macos-2.0.2-aarch64.tar.gz"
      sha256 "64029a00b2c47b07c9f5d320874259a174e70f2eae57a1c46ed49ecb1e48d2ec"
    end
  
    version "2.0.2"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  