class FlashCat < Formula
  desc "Send things from one computer to another"
  homepage "https://github.com/yunis-du/flash-cat"
  version "2.3.6"

  if Hardware::CPU.intel?
    url "https://github.com/yunis-du/flash-cat/releases/download/v#{version}/flash-cat-cli-macos-#{version}-x86_64.tar.gz"
    sha256 "23dab85966ae6f1b787ec668355f6de4c651257f5706cb8f276ba40d6cab332c"
  elsif Hardware::CPU.arm?
    url "https://github.com/yunis-du/flash-cat/releases/download/v#{version}/flash-cat-cli-macos-#{version}-aarch64.tar.gz"
    sha256 "efa64dc349986f680fb35ea0f2eb3356e40d71f7e36d24308eb2bbc7caa1b33d"
  end

  def install
    if Hardware::CPU.intel?
      bin.install "flash-cat"
    elsif Hardware::CPU.arm?
      bin.install "flash-cat"
    end
  end
end
