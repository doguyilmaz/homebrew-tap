cask "aims" do
  version "0.3.2"

  on_macos do
    on_arm do
      sha256 "80e49ef425dbb5b212fdac520f340791cf1a8063b7f3e4bd8ca4de92ca9945e5"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "c08b16b369e2f877eb2facb4ccb0d3141fe2f1aa1f4e1c981f064531bdde2e84"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_amd64.tar.gz"
    end

    app "aims.app"
    binary "#{appdir}/aims.app/Contents/MacOS/aims"

    uninstall launchctl: "com.doguyilmaz.aims.keepalive"
  end
  on_linux do
    on_arm do
      sha256 "f8b33b585fdb3374eac13c78e1122c24646b4596309cfe7ecefbfc78b041816f"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "636799f10c8670d47105a9b0274ba0ae96fde6430fa43361ded592b2bb98200d"
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
