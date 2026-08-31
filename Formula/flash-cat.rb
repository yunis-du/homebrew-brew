class FlashCat < Formula
  desc "Send things from one computer to another"
  homepage "https://github.com/yunis-du/flash-cat"
  version "2.3.5"

  if Hardware::CPU.intel?
    url "https://github.com/yunis-du/flash-cat/releases/download/v#{version}/flash-cat-cli-macos-#{version}-x86_64.tar.gz"
    sha256 "1fd709925d6f9043575f91f4e1c7420a4748c7210fd1b8713ffc2d837a11cfc8"
  elsif Hardware::CPU.arm?
    url "https://github.com/yunis-du/flash-cat/releases/download/v#{version}/flash-cat-cli-macos-#{version}-aarch64.tar.gz"
    sha256 "76c2720dc759c406faa7169022c7143d2eb189e81a5ce7f2dce261883ef60127"
  end

  def install
    if Hardware::CPU.intel?
      bin.install "flash-cat"
    elsif Hardware::CPU.arm?
      bin.install "flash-cat"
    end
  end
end
