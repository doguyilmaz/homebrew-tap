cask "tapster" do
  version "2.0.1"

  on_macos do
    on_arm do
      sha256 "5157dce63bede81f928f4c08a2ca1a72dfb0eaf6fcf1a22704452cae0c28b299"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "7659e901a5ea021b56517ed18a2cebfe750be533637eecd7d27e48899e9b4b52"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "b5effd3f65262fd19b877a9a226a4b408321fe600607b524cf86f7ce7865e574"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "75e94bf5576db9601a6c62c3b478c7f1fdde5895801b628b20d76d70cee94a4a"
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
