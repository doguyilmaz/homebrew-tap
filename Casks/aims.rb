cask "aims" do
  version "0.4.4"

  on_macos do
    on_arm do
      sha256 "bb65b216652c16d3cc020c844f7dd5bc0620b2d1d5b9b19c65647d215d93bae9"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "e3592997a46104b906368ae4aae47acecf82fb63f60451f1bd97e35139502cf9"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_amd64.tar.gz"
    end

    app "aims.app"
    binary "#{appdir}/aims.app/Contents/MacOS/aims"
  end
  on_linux do
    on_arm do
      sha256 "d9a023f363b6a8dc33a381156d7c4a381032a36460d7d48f9313f5ca8737c547"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "31d597b6627d04f498278a1aa6de3f4fc06cdb4698340593ceabbbbbe6d0fb0b"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_linux_amd64.tar.gz"
    end

    binary "aims"
  end

  name "aims"
  desc "Several Claude Code and Codex accounts on one machine"
  homepage "https://aims.apps.doguyilmaz.com/"

  livecheck do
    skip "tapster"
  end

  bash_completion "completions/aims.bash"
  zsh_completion "completions/aims.zsh"
  fish_completion "completions/aims.fish"

  zap trash: "~/Library/LaunchAgents/com.doguyilmaz.aims.keepalive.plist"
end
