class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.5/flash-cat-cli-macos-2.0.5-x86_64.tar.gz"
      sha256 "7cd3efd8bd198bb27577de52f6befbf66b58b99ef8f9b7c24eef899561de904c"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.5/flash-cat-cli-macos-2.0.5-aarch64.tar.gz"
      sha256 "8e608bc7db70de18c351433543422f19969b3900d0e32488db6562e764ffed64"
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
  