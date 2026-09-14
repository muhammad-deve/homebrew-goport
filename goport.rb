class Goport < Formula
  desc "Expose localhost to the internet instantly"
  homepage "https://goport.uz"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.4/goport-darwin-arm64"
      sha256 "0711d190f5f2e47c60cc8980d5850b9e2596f64b1eec02a500683cb0ca93cbb9"
    else
      url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.4/goport-darwin-amd64"
      sha256 "1bfa35118dee682d26864b1ace4ef21f1dd6feb0421291cb4ab1c4b8593d3e54"
    end
  end

  on_linux do
    url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.4/goport-linux-amd64"
    sha256 "cfffb7c34108d6d783cea96b48bc8e536cce3d7ce79a9d374107351fb70e1f73"
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
