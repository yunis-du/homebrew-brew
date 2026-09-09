class FlashCat < Formula
  desc "Send things from one computer to another"
  homepage "https://github.com/yunis-du/flash-cat"
  version "2.3.8"

  if Hardware::CPU.intel?
    url "https://github.com/yunis-du/flash-cat/releases/download/v#{version}/flash-cat-cli-macos-#{version}-x86_64.tar.gz"
    sha256 "4b3e8119a6173d0334c6e9e4da4deff927b6865eb0f8e5bc61688821401b2d8b"
  elsif Hardware::CPU.arm?
    url "https://github.com/yunis-du/flash-cat/releases/download/v#{version}/flash-cat-cli-macos-#{version}-aarch64.tar.gz"
    sha256 "78bc6e9557166758f1c5246ed2d074380a5818e023a8cab8508288507472e80c"
  end

  def install
    if Hardware::CPU.intel?
      bin.install "flash-cat"
    elsif Hardware::CPU.arm?
      bin.install "flash-cat"
    end
  end
end
