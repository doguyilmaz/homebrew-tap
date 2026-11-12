cask "tapster" do
  version "2.1.0"

  on_macos do
    on_arm do
      sha256 "923401f52a035d0a30920fb09b97347366953e930e67d02b5953501aa74bc9b4"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "2495929cb64ef4c63b7fd443503102a46925658159a926ba04136ad220f29c36"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "1a3eccf877d89529ab7fac9280e59ef8ad64b2cb21be5baeb6d2c439df9646cb"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "bf69e88eb04d3aad9c8eedc643a0f0e2854f45dcdb30f5a23ed056851f967cb5"
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
