cask "aims" do
  version "0.4.2"

  on_macos do
    on_arm do
      sha256 "1262fcfe044cc652067b72c715b07279d76de3b4b3bd7e29687d9137b42c926e"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "09f0e3ffa043696e6fa43ef140ae8d685cbf91f3b54775fef02bf89e50b00c2c"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_darwin_amd64.tar.gz"
    end

    app "aims.app"
    binary "#{appdir}/aims.app/Contents/MacOS/aims"
  end
  on_linux do
    on_arm do
      sha256 "eb13fadb7a4c031ff4c291e732a76c0fd69d7279582a1339d0972923f7541560"
      url "https://github.com/doguyilmaz/aims/releases/download/v#{version}/aims_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "d74bf9ca7254147065b072ecb1bc88c37abd17a906ae2b272e474026ca8c23d2"
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
