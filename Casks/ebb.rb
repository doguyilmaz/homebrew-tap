cask "ebb" do
  version "0.1.7"

  on_macos do
    sha256 "eea3b0762d1614d47de979624abd71a60ae2d407ce1e482be2602cf3926671b4"

    url "https://github.com/doguyilmaz/ebb/releases/download/v#{version}/ebb_#{version}_darwin_universal.tar.gz"
  end

  name "ebb"
  desc "See where your disk space went and win it back safely"
  homepage "https://github.com/doguyilmaz/ebb"

  livecheck do
    skip "tapster"
  end

  depends_on :macos

  app "ebb.app"
  binary "#{appdir}/ebb.app/Contents/MacOS/ebb"

  uninstall launchctl: "com.doguyilmaz.ebb"

  zap trash: ["~/.config/ebb", "~/.local/state/ebb"]
end
