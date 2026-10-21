cask "aims" do
  version "0.3.0"

  on_macos do
    on_arm do
      sha256 "cc6f023808c9b9c4cf36474cddfb794a9c74f8c4be0d7d87b6ac3418a480e11f"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "1121aa526a5338f7b648e828dc2107c0468b6afae7f27675ac5c0340aa546f6d"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_amd64.tar.gz"
    end

    app "aims.app"
    binary "#{appdir}/aims.app/Contents/MacOS/aims"

    uninstall launchctl: "com.doguyilmaz.aims.keepalive"
  end
  on_linux do
    on_arm do
      sha256 "29644132ab33537d8cb33d8ba1e5670f0a6b6409f0a9ffe199fdb12c09ac5112"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "4c3f143fed9ec6ec0d67620fdc20bbeb5c0967c562d088572cc04139bf015229"
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
