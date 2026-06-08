class Goport < Formula
  desc "Expose localhost to the internet instantly"
  homepage "https://goport.uz"
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.0/goport-darwin-arm64"
    sha256 "33129409de3874af77c7552bd472eb96201986e95133bd1ff621c68911e297ae"
  else
    url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.0/goport-darwin-amd64"
    sha256 "9a458059ab00be54f80e1870b10e6be41aa4e8ad513e4322df3760f7f09fa7b4"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "goport-darwin-arm64" => "goport"
    else
      bin.install "goport-darwin-amd64" => "goport"
    end
  end

  test do
    system "#{bin}/goport", "--version"
  end
end