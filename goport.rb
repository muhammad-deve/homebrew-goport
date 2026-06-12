class Goport < Formula
  desc "Expose localhost to the internet instantly"
  homepage "https://goport.uz"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.1/goport-darwin-arm64"
      sha256 "d8bb395f36a73a210415753d4da31c87c6364df350234f990631e0f0b99d8ce3"
    else
      url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.1/goport-darwin-amd64"
      sha256 "32a635d47070a41c180a3657c9f50a8653ef08027720c2239a8f65345116c539"
    end
  end

  on_linux do
    url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.1/goport-linux-amd64"
    sha256 "cfa56d605843096bb44295f54af3246c09f04a06d50796d5ea86a15973bb9192"
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
