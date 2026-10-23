cask "tapster" do
  version "2.0.0"

  on_macos do
    on_arm do
      sha256 "aac7fef6f01dcb4aeaae71e5daf68ec5c0577e30c5088bb4b2854b2fcf68de27"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "8394fae39569a630728ffb05caceb083821db3f9c12384ca0f61e1184d19a49a"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "053c8b19596c1c1a8e25cea3efedd7e5806a51507ded0ab5c1184ff805dea92a"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "52e3c840cb92e27b683ff45c827ee05c3210bb3b184fa43b0a0ec9006f9ba93b"
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
