class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
    version "2.2.1"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v#{version}/flash-cat-cli-macos-#{version}-x86_64.tar.gz"
      sha256 "9306a81fa6f10942da2a039245831f798154c254d434f22fae7b39cd38f554e5"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v#{version}/flash-cat-cli-macos-#{version}-aarch64.tar.gz"
      sha256 "2123f0fb45232548c89673189d14c35e1302daf578b9a5cf79de7f47b8d7d389"
    end
  
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  