cask "tapster" do
  version "1.4.0"

  on_macos do
    on_arm do
      sha256 "42dac3aa9952e5a76a811f01fa1b15a0d246cd6a70780f1b1b4bf194d6109a47"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "ee72676b0e07a804aaf64449650ec84a97c2b0d928db91e19747678470461337"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "8e00b1cb2f94cf98c8427e7e69ec525b14be31e4a6586e1223407cb39483ed23"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "9ccfc70ccdcabeb7fff310e13dda895c06ff3ab5f20fe120aacc0fbdf4ae64a7"
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
