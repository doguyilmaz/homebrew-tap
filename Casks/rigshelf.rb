cask "rigshelf" do
  version "0.1.0"

  on_macos do
    on_arm do
      sha256 "af5c0b73a52b9989631d580a0eec34e2edb5f33c3794d08392fadef2195f49e0"
      url "https://github.com/doguyilmaz/rigshelf/releases/download/v#{version}/rigshelf_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "12777ad9428ef88fb4ad1ed21d435c994bb1a25697530d08debd5231a31b76e5"
      url "https://github.com/doguyilmaz/rigshelf/releases/download/v#{version}/rigshelf_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "adb7e8eefcf1433df58433f372783c6062b4ca3866a0786920c26316092ade8e"
      url "https://github.com/doguyilmaz/rigshelf/releases/download/v#{version}/rigshelf_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "8c65e38af9ba9f4e5c58fe6a21d1eacb8add6af8109400255ccab7e4981c863b"
      url "https://github.com/doguyilmaz/rigshelf/releases/download/v#{version}/rigshelf_#{version}_linux_amd64.tar.gz"
    end
  end

  name "rigshelf"
  desc "Set up coding agents for each project from your own library"
  homepage "https://github.com/doguyilmaz/rigshelf"

  livecheck do
    skip "tapster"
  end

  binary "rigshelf"
end
