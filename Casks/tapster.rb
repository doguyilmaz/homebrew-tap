cask "tapster" do
  version "2.3.0"

  on_macos do
    on_arm do
      sha256 "0e3f2da7ec6e05921be09586b46909b48982a73d8a9a67bdf4fa4db8f0fcb947"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "ebd35136f3b46195234317bb5165ac2408788e2810dd87664a83ba72e8524836"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "c73b581fdcdc8d16fcd2a74597259589d3ce4b20bd852cb33dfa8374bb6fd6ab"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "28a724f8491e878af6d29ad8ae2a50b4dbdce5b01c5840c80d707967d82782c9"
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
