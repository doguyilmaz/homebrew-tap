cask "tapster" do
  version "1.5.0"

  on_macos do
    on_arm do
      sha256 "bd3f36dc2bfdb4f02dd3be5228d72dfe6509ccb2716a37b1a34681d73514f1bc"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "2f2f7b12de4a444d1fcb2e51a35e58858b5f25b2a9023768f048ce3dbb57d9e7"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "ceba620f832c8d2cc3ada3c316f86e4b5c0dd20bab512efd1750f0744535b494"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "165d42cbd2531d4109eb357348aea250146fd05fec0717f725c76c31f154fa88"
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
