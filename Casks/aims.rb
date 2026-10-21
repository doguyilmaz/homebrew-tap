cask "aims" do
  version "0.2.2"

  on_macos do
    on_arm do
      sha256 "db692fb387c3e0e2a65a73577f772c528c8aebf097664e8746194e591d437853"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "2f77d92a75f007d33e209ed6448c91a0092037c279f1dcbfbadc0e1ec10324f6"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_amd64.tar.gz"
    end

    app "aims.app"
    binary "#{appdir}/aims.app/Contents/MacOS/aims"

    uninstall launchctl: "com.doguyilmaz.aims.keepalive"
  end
  on_linux do
    on_arm do
      sha256 "ab3645ccc45129b78f90e7d72748aae5f802ffb0a8f52aaf1976dd3913d21071"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "bb9532d6482080bae1c08ce0c6e168eb741e765edb285bb28eacff9e3f68a5eb"
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
