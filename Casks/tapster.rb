cask "tapster" do
  version "1.6.0"

  on_macos do
    on_arm do
      sha256 "0d1248523a576e72be6ed4b27338a72c8561e85b55b6986eb5919056be196666"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "664ad5e2e90d27f9908cb1993195dd1eb037a784de40bcb000275bbcf831b603"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "4b0e4fecd9c2a1e64b6ba68d61e42924bd739f6ff0e93c4f4691111942482fdf"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "2b5a9621a11ed20a1b550b67bca79dbba6f46dec93c4f6f85dc3b8c5d83fc7de"
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
