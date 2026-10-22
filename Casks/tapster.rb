cask "tapster" do
  version "1.7.3"

  on_macos do
    on_arm do
      sha256 "2cccc5ca771fddf4b8c9291af7e7029f514758aea7fae54c217f058ef9b1baa5"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "b847d11b9065adc3b121f876b83ad392080fe5babd83ccd4d44390203f6a0d38"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "32215b627ae4e4197dfc2706dec2a0b0ec9776fd7eba983dd720dc68b3f77acb"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "13357a7ffcb7a72db3e518894f235ea40aee1171bfc9a070add4eb5b3d05389f"
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
