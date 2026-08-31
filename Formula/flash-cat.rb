class FlashCat < Formula
  desc "Send things from one computer to another"
  homepage "https://github.com/yunis-du/flash-cat"
  version "2.3.5"

  if Hardware::CPU.intel?
    url "https://github.com/yunis-du/flash-cat/releases/download/v#{version}/flash-cat-cli-macos-#{version}-x86_64.tar.gz"
    sha256 "9670aa9ace67c0c9f623cff89e1ae4423f26724823f820915811b8e6d336b9eb"
  elsif Hardware::CPU.arm?
    url "https://github.com/yunis-du/flash-cat/releases/download/v#{version}/flash-cat-cli-macos-#{version}-aarch64.tar.gz"
    sha256 "135d8ec0bfce9236c6fe24e54b935a19edb3f17df1fc04d5503c853a8571436f"
  end

  def install
    if Hardware::CPU.intel?
      bin.install "flash-cat"
    elsif Hardware::CPU.arm?
      bin.install "flash-cat"
    end
  end
end
