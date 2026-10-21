cask "tapster" do
  version "1.6.4"

  on_macos do
    on_arm do
      sha256 "363a5f0130a4f50b9d8d27b3dab7de83c73cea21d14a925d0255321062f37a73"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "f1e1ad38d698828791a04316319737c371a5f3c64786afab7fb251ef0d00cdee"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "14faf5ed598896b8aebe053cad453d346b3a82ffd2d6501f277a2de8287b2444"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "b221a94d93d1182f62b6b877d56cc1a709909ef9d92d09499f3da2bfc4883cd5"
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
