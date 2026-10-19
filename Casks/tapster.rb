cask "tapster" do
  version "1.0.0"

  on_macos do
    on_arm do
      sha256 "3d22d1224e0848b36cb8cb91e52afd9d08251b9edc475794c1692a85a2d0854e"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "0f4745b9744f9e5da5969335e3cb051996f328d7cef219c939ced19c889b75c9"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "c61597530bd03bf7fd59ae79b25d7760d78b1e7e9e910814955a03ad028a1c38"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "0a73a7af5264f5e73aced3ab237d285784eac397191fb470bef5b81915100afe"
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
