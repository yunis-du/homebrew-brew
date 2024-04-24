class FlashCat < Formula
    desc "Send things from one computer to another"
    homepage "https://github.com/yunis-du/flash-cat"
  
    if Hardware::CPU.intel?
      url "https://github.com/yunis-du/flash-cat/releases/download/v0.1.2/flash-cat-cli-macos-amd64.tar.gz"
      sha256 "6f651c63a1f13ba1be1992691c2abadf35151a7ad99dd66ea353ec573d9ae1b3"
    elsif Hardware::CPU.arm?
      url "https://github.com/yunis-du/flash-cat/releases/download/v0.1.2/flash-cat-cli-macos-arm64.tar.gz"
      sha256 "7d373cf743561dbf44b62730cfc0dc4ac64382ad3f02cc80a9d25019fd5c942b"
    end
  
    version "0.1.2"
  
    def install
      if Hardware::CPU.intel?
        bin.install "flash-cat"
      elsif Hardware::CPU.arm?
        bin.install "flash-cat"
      end
    end
  
  end
  