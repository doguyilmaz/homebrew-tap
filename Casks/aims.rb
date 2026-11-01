cask "aims" do
  version "0.4.3"

  on_macos do
    on_arm do
      sha256 "51eb0241b84e2bab63524922786ffccab81d30a804fe5fc4736cbfe46dcc6bc8"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "237b78505222a462f2b92172b057a23234297cb53f543b8de9fcff172e72d8ae"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_amd64.tar.gz"
    end

    app "aims.app"
    binary "#{appdir}/aims.app/Contents/MacOS/aims"
  end
  on_linux do
    on_arm do
      sha256 "3519c46c479b4bc592a783a89678c2d27575f30407423033687bb5a27ba86093"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "9ad76ca7d0d4d881b61f09341f5843537830af9189a44345e084a0538aefe7c2"
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
