cask "recesso" do
  version "0.1.0"
  sha256 "776f71ce98c1678ca7399371b383be1f64a3bf44e5ff2c53e98f4d7a9086c0a0"

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
