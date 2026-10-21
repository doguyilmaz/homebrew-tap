cask "tapster" do
  version "1.6.3"

  on_macos do
    on_arm do
      sha256 "71b6cb3fb92bfdba78c3c59029627b96b932fcd94f67e20d6c3bf94462fae2b1"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "8a6b5b45b5504a24a6ee5bf4aaa6a217e2f897702e37ee07adc80a4f53cdd49b"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "e570b56ce47be35cf5e143f8b1fda64534b4c3769e91163e1905af7d90ab0a5c"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "f942a2e4a90e946ae1e5228155c5b2eff8081d2b3cb473831ab11fd173688803"
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
