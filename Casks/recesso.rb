cask "recesso" do
  version "1.0.0"
  sha256 "47a1e11e04f87f481f9867a80ae56213ee150c15f9a1a02126dd008c1d08bfc2"

  url "https://github.com/doguyilmaz/recesso/releases/download/v#{version}/Recesso-#{version}.dmg"
  name "Recesso"
  desc "Eye, water and movement break reminders with research-backed presets"
  homepage "https://github.com/doguyilmaz/recesso"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  auto_updates true

  app "Recesso.app"

  zap trash: [
    "~/Library/Application Support/Recesso",
    "~/Library/Preferences/com.doguyilmaz.Recesso.plist",
    "~/Library/Preferences/com.doguyilmaz.Recesso.settings.plist",
  ]
end
