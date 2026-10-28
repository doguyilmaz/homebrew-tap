cask "tapster" do
  version "2.0.2"

  on_macos do
    on_arm do
      sha256 "0bc268729ed5780d0b93504ec8e044ce285a67766e1d43de704634d4bfd226d2"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "9e93d0e85f4572db21548ac3026abc855ec8bbcf8f40602b95c99f755849d8fe"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "80a7a68c48e1a424b2f8ae746238add9d5d7513409857b57bc28d25633dfe72a"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "c0a14d7a55fde2e88d0b96e446af9a5d125db6f551be259919b12d95b38d2845"
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
