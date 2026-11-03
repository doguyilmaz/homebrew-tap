cask "aims" do
  version "0.4.5"

  on_macos do
    on_arm do
      sha256 "22c7c9d5db1f9ea14899f1d1bb8333b1b192d8e19a04abd2bfb1bef2caca28af"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "5e05038b8d8599e1c4c62a16917f75d457353373a7f3a9a4cb827d63f076ba16"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_amd64.tar.gz"
    end

    app "aims.app"
    binary "#{appdir}/aims.app/Contents/MacOS/aims"
  end
  on_linux do
    on_arm do
      sha256 "1d1ebcaa14d3a70e3bc466158e67cefe3f842c23c4653d3794070ae5f8ee709c"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "7cef49e9ae2d5d96f3181aad23cdc6293d6186b25cef09a841c4f2121cea795b"
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
