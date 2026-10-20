cask "tapster" do
  version "1.1.0"

  on_macos do
    on_arm do
      sha256 "44242f6a38c9611a883e1da967e3d096f84462e202dba4f13c53342589125a44"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "f586fe341a0c0aa26adc5bae465370650180705115b572db704f341c011d4b21"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "24a8cd75f00cfc392250cbcceec3a69818850f9f981e6b660535771b5eaf3b08"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "f9e295dc72214b9449684049115161fd8c00c6403ecd1c5bbcf2c96568edbc4f"
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
