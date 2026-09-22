class Goport < Formula
  desc "Expose localhost to the internet instantly"
  homepage "https://goport.uz"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.5/goport-darwin-arm64"
      sha256 "97cd80ac99281c97da010ebec08dfa9f40ef973e2124374aee8dcbbc6161b438"
    else
      url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.5/goport-darwin-amd64"
      sha256 "3a72a6443bd94e3c47c01cdcedc5ecab7d4a4df34da3ffb4c9abb223f98ee514"
    end
  end

  on_linux do
    url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.5/goport-linux-amd64"
    sha256 "be172b7e3fb42cb498fdf8283ecda9419077282e42af834387293ff6996c5d34"
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
