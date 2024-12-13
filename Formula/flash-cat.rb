class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.0/flash-cat-cli-macos-2.0.0-x86_64.tar.gz"
      sha256 "5e07dae74977984b2913aa1fc61aa514ef5c470ba3abaecda3f0aea0981942b2"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v2.0.0/flash-cat-cli-macos-2.0.0-aarch64.tar.gz"
      sha256 "c9486317325b5a6eb967763b568c3758851070e281fdbe88a9703d67851dc98e"
    end
  
    version "2.0.0"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  