cask "tapster" do
  version "1.1.1"

  on_macos do
    on_arm do
      sha256 "5dabc43a01a28eba986b0ca0d12694f991ddb4365d97ed66f63b7ce7909834b4"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "c71a7c6ebffed8e74fb0c44ed38dee384d0b907e2bcfe0818c75f69f59724f12"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "2639fc227df77d75a1d81e39761a4c39987bc0e3860a7109f9cda9abeba7e2a8"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "a765534ab158f9e2317dde0e26b995c691841e573057360b2ac408eedce5e48d"
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
