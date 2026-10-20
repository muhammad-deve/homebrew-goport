class Goport < Formula
  desc "Expose localhost to the internet instantly"
  homepage "https://goport.uz"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/muhammad-deve/GoPort/releases/download/v0.2.0/goport-darwin-arm64"
      sha256 "98cef5b98fe4667c741acd5e1cccf4982604ad9c6473ecf627fbe3c95b8388e4"
    else
      url "https://github.com/muhammad-deve/GoPort/releases/download/v0.2.0/goport-darwin-amd64"
      sha256 "f2ff3bc369dde817ce62127c1841adbd0ade5f0c8c80f14bc63d957b015d42db"
    end
  end

  on_linux do
    url "https://github.com/muhammad-deve/GoPort/releases/download/v0.2.0/goport-linux-amd64"
    sha256 "a74fafa06aa5b3d0699d67844d2396842cb3957b0dcdbf9fcdcf073fc25501c8"
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
