cask "tapster" do
  version "1.7.2"

  on_macos do
    on_arm do
      sha256 "8bf2ccab679b898195eceab5924a843fb150adc0775ff0a53cf7065d42a596db"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "a44cd1340a7ebd948435cf6ffac55f9bae7d7e92b88bea941aafc53ac2f87063"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "6a579c5429bdad38b054200a939df76cd14dfb89183973b719f7568eb20272f0"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "78d4d2f67c7ad04fa295ecbcab20e01468c7b95f54cef97743dcb6507e734035"
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
