cask "tapster" do
  version "1.6.1"

  on_macos do
    on_arm do
      sha256 "d33101c0272e89ab96f970750b2770ee66930d07038dfe2b8ad0b46b7b823d9b"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "f537faead8cd27bed3f70d27382b0620f91ce775d97aeb42d26dc222f0179d4c"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "ea6cdc6ac5c297395583364fd55c9a02cbecba034e3d1da2baca8409ab2a7d15"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "2f1d60f9d5d0b0c1bad9acdc036bcbd02f97de9a5ed3a88c9a54034d5a791a4a"
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
