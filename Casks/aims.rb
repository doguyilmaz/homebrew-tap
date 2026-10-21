cask "aims" do
  version "0.2.3"

  on_macos do
    on_arm do
      sha256 "0dfdb5895ca3bf73e0aecf31b7ff776784044fd5f573c3662650764dff0eaedb"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "38e805ecfbdcb5ef7026bcac3f14d4dc06ebe184efd4b1e712d36113c2289e3d"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_amd64.tar.gz"
    end

    app "aims.app"
    binary "#{appdir}/aims.app/Contents/MacOS/aims"

    uninstall launchctl: "com.doguyilmaz.aims.keepalive"
  end
  on_linux do
    on_arm do
      sha256 "9babec2988ac044efaab4b7a219508dc5d3ad339a26df7e1dff7d9c15e24b77f"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "15bd797afa0463b4b5d924b4a0685e8362190733ea0697cdfe5ad9f5cee90233"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_linux_amd64.tar.gz"
    end

    binary "aims"
  end

  name "aims"
  desc "Several Claude Code and Codex accounts on one machine"
  homepage "https://doguyilmaz.github.io/aims/"

  livecheck do
    skip "tapster"
  end

  bash_completion "completions/aims.bash"
  zsh_completion "completions/aims.zsh"
  fish_completion "completions/aims.fish"
end
