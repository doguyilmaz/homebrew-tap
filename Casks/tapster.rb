cask "tapster" do
  version "2.3.1"

  on_macos do
    on_arm do
      sha256 "0b92704a213bde99dd3510e913495f7045a47641d3ab7f23cf7b9e8b4b7292ad"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "0a76adfa9a0f813023c42af7295243503c041349840fdaa1d407a9d3a3e770f0"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "aa656aa843891b1b5e531916d9522d25e452ea5ea8c47805bc1347bdd8e4d337"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "b8ecc0cd65407d7bb105a4eeb978ae1a7549948dabf41ec2d7a8e039f9f18075"
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
