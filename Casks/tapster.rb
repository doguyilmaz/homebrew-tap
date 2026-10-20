cask "tapster" do
  version "1.3.0"

  on_macos do
    on_arm do
      sha256 "d472f6c4be62dae0dbbef01588baf64f41e081c66fc0de250c6edf17fd7545b0"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "6bc773d1a75ead0fab22ff773d6ad338c97ad0a3607c6232b71a0295ea401fe8"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "dbdd88bfd8099034aa8f9fb62b06e4239c4ca6552a49591a0a0d5b1c768ff624"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "00b19a4caeb52d383fa5be227dfaded20fb825ea2ce8dea43edbb1846a95d113"
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
