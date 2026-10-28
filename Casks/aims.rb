cask "aims" do
  version "0.3.4"

  on_macos do
    on_arm do
      sha256 "76173673e42da804ee727b9cc7f5d56522af5a23e14e377d1ae9f45ccf16ca20"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "c5e71f770645d3ce64cb051a1228d0c87efa12645dd93373f99a8910e1794f90"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_amd64.tar.gz"
    end

    app "aims.app"
    binary "#{appdir}/aims.app/Contents/MacOS/aims"
  end
  on_linux do
    on_arm do
      sha256 "d0ca26e52b91b3fd124c10db3c5bf762a432e9a2b8ed08fae7bad11625291342"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "73df92fcb82e0ef99309abd31b27e69ad39ae1e32a3804f974373c679e19c407"
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
