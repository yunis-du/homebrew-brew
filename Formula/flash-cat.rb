class FlashCat < Formula
  desc "Send things from one computer to another"
  homepage "https://github.com/yunis-du/flash-cat"
  version "2.3.6"

  if Hardware::CPU.intel?
    url "https://github.com/yunis-du/flash-cat/releases/download/v#{version}/flash-cat-cli-macos-#{version}-x86_64.tar.gz"
    sha256 "b5c2443971515c1b5364c920a7e3c6148016d9fb512fff946321dfdc6d244bfd"
  elsif Hardware::CPU.arm?
    url "https://github.com/yunis-du/flash-cat/releases/download/v#{version}/flash-cat-cli-macos-#{version}-aarch64.tar.gz"
    sha256 "c2f3a5869ced51c7bf8a3eab1d5c3e5d294aa8c56cca7c70495753ecb15c9c50"
  end

  def install
    if Hardware::CPU.intel?
      bin.install "flash-cat"
    elsif Hardware::CPU.arm?
      bin.install "flash-cat"
    end
  end
end
