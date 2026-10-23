cask "aims" do
  version "0.3.1"

  on_macos do
    on_arm do
      sha256 "a0ed1f9403057263e58a28d818366c67b533d166d257a9df3c9ee84035e7de43"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "a8883d78ed59950c895d1a8cf2e0c91536444e52f3496cd9585d064ed365ca68"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_amd64.tar.gz"
    end

    app "aims.app"
    binary "#{appdir}/aims.app/Contents/MacOS/aims"

    uninstall launchctl: "com.doguyilmaz.aims.keepalive"
  end
  on_linux do
    on_arm do
      sha256 "0b63e64568d98667261d4ca1eb7fce9e43758e8916ccd5a86636bd8831bf7093"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "ec389831c7d4b17e9985efb14c54f4d5366d5886f324d537424c78f7c939da51"
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
