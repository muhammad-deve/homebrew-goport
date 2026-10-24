class Goport < Formula
  desc "Expose localhost to the internet instantly"
  homepage "https://goport.uz"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/muhammad-deve/GoPort/releases/download/v0.2.1/goport-darwin-arm64"
      sha256 "6030042004a89d74aae0bb1982b74262ae52ac6356e3425319268ebee96a5eff"
    else
      url "https://github.com/muhammad-deve/GoPort/releases/download/v0.2.1/goport-darwin-amd64"
      sha256 "5850b16fd7b7546953a243f48a14b14426afccc8d0b0299dca3a3a83542988a1"
    end
  end

  on_linux do
    url "https://github.com/muhammad-deve/GoPort/releases/download/v0.2.1/goport-linux-amd64"
    sha256 "18be811c3ed81c3fd31341c9c8cc4ef818ba32e0aee4b1a27e83c239ce92365f"
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
