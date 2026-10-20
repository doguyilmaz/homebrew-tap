cask "tapster" do
  version "1.2.1"

  on_macos do
    on_arm do
      sha256 "6d49a57be27885f5687b017d6200d51390b9e6fb546a538d3a634ea24724ffca"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "b0d062d85a7dddb282bab341f907833e634327ddc2443eb97e08201eaae0c551"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "85a92842d55820829293f3e7dffdfe1f7f57b3a318a8821ae9cb853503a7f218"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "074c27231b5ca522dca54a77aeb61f6aca41a895321d1ac0c0e68c0333aa12c1"
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
