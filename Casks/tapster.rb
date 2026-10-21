cask "tapster" do
  version "1.6.2"

  on_macos do
    on_arm do
      sha256 "401878b2d3dd7a70b0d57bd34c5785735c4251c26cf3f63aaae7a9fd8f8e855a"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "5cbf4f26c5312dcd70e6bc87f241765c80b7d4df366f80eda9e01e061989b696"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "d437d153b277d5bb3efb432301f0234f317089dee4025ade11f5e264d39f1730"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "1adeecd708b28db974fec76a4b1490daa721399b2085ed10a72351a469eaa140"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_amd64.tar.gz"
    end
  end

  name "tapster"
  desc "Sign, notarize and publish your releases from one Homebrew tap"
  homepage "https://github.com/doguyilmaz/tapster"

  livecheck do
    skip "tapster"
  end

  binary "tapster"
end
