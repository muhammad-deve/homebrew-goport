class Goport < Formula
  desc "Expose localhost to the internet instantly"
  homepage "https://goport.uz"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.8/goport-darwin-arm64"
      sha256 "e9b824bc6d71cf2475380c56a3f560f8cd40eff4fa7a03e6572c7826c3d731fe"
    else
      url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.8/goport-darwin-amd64"
      sha256 "4c521fbfdfea0cd15e5ea869343f7877336dd393a1355eb9bc45dc8db8597248"
    end
  end

  on_linux do
    url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.8/goport-linux-amd64"
    sha256 "1dfe68f41472a4dafa9e140a46c0d12a3a140a5a2c82537348ef0a197754a72c"
  end

  def install
    on_macos do
      if Hardware::CPU.arm?
        bin.install "goport-darwin-arm64" => "goport"
      else
        bin.install "goport-darwin-amd64" => "goport"
      end
    end

    on_linux do
      bin.install "goport-linux-amd64" => "goport"
    end
  end

  test do
    system "#{bin}/goport", "--version"
  end
end
