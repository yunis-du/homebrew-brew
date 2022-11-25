cask "autoshutdown" do
  version "0.0.1"
  sha256 :no_check

  url "https://github.com/duyunzhi/AutoShutdown/releases/download/v0.0.1/AutoShutdown.dmg"
  name "AutoShutdown"
  desc "auto shutdown your machine application"
  homepage "https://blog.duyunzhi.cn/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "AutoShutdown.app"
end