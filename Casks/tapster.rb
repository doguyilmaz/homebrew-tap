cask "tapster" do
  version "2.2.0"

  on_macos do
    on_arm do
      sha256 "7135099af250a8a08059c213b062b03ebc821cdf3760423e5ff9c293665a3ecd"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "104dbf9b9c34da6b74db2199677f48b44788b04477ab43b4aa1211aaa7baea21"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "11125f113d7ac820f09964f187029c65b63e98e820a0dfcb5521c3990942887d"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "f26cb619393ab1f0979aece4b95ce8021c45cdf152501449ec88b760b3a7eeef"
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
