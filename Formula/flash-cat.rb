class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.5/flash-cat-cli-macos-2.0.5-x86_64.tar.gz"
      sha256 "cb1ad678ea2e8c97ee26abefebe11649c58d8e4fc02df032e88ce106174f6f6f"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.5/flash-cat-cli-macos-2.0.5-aarch64.tar.gz"
      sha256 "6e2f3baec9d03365fafcc8f50dc0eb7029a2c919c046d69592c174c0dbf73744"
    end
  
    version "2.0.5"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  