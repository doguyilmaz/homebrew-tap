cask "tapster" do
  version "1.2.0"

  on_macos do
    on_arm do
      sha256 "c15fcb1d8c839fc1b5dae9e57415f92790ba10946848f5fa05bfd6ca3703c89b"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "c79f2bc0223e5eb3828674a94aefe6cd8c6c21d021cb52fc378d8640658e45a2"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "ea80225b4a8922cdcfffe65b2bcf3d28bdaeff80eb0135b514b7a3b5e8427b8d"
      url "https://github.com/doguyilmaz/tapster/releases/download/v#{version}/tapster_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "86c1ab798454af441d6419305e9caa2fb2c7138dd3ee578a4d83d7e24376fce2"
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
