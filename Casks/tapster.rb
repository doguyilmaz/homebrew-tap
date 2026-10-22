cask "tapster" do
  version "1.7.1"

  on_macos do
    on_arm do
      sha256 "74b8184e39fc8425de9099ebfaa7a4cc7af1ba289267af84e234ec6e9622c94d"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "ef17c708b9b60dabfcc10831b50fb256e53a1c1779146300761c563ac7f93a1b"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "30c9cde793f301f18aaf6be63d1828ad42ad4ca1c0303c22e984837a34274fa3"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "edcd9eba0a88981ca5825dd787c6730d91cf4a40f752eea3f46bbb2ad7bef74e"
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
