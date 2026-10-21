cask "tapster" do
  version "1.7.0"

  on_macos do
    on_arm do
      sha256 "4c1caa1379e5112d89f6631fc93e5275bb119021318b1608b784b09689577637"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "5c073f238061ec52c9717937173954a1ecb52c0688eaef2e5da9a1fe6e69ebb2"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "6cb78345f34e5d621eb40899df249298b9d096a3c5bf3c7aeaa7e3c418596158"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "f3223a9319c3f066c44b7a9a4370894c49ff217138192c332807fb3461e0fca1"
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
