cask "aims" do
  version "0.5.0"

  on_macos do
    on_arm do
      sha256 "3b40e5d511d6a7991d8860cbcdd3caac00fab0c41605b6c25614a7f8caf5fd32"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "c2486f6fb4219fbfd495e750a47ffb6f137b31b022fd34e8dcc5f82d527654fe"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_amd64.tar.gz"
    end

    app "aims.app"
    binary "#{appdir}/aims.app/Contents/MacOS/aims"
  end
  on_linux do
    on_arm do
      sha256 "520c61156437942664d2d4147a66c4c12ad67e0cf1c8097ca7ee5df581c2bd8c"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "ecfc941dae58c4cf1c7a9e8e914c638536f63cabd4a55290f8a6c37b968df6ba"
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
