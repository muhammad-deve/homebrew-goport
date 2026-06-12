class Goport < Formula
  desc "Expose localhost to the internet instantly"
  homepage "https://goport.uz"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.1/goport-darwin-arm64"
      sha256 "949867aa51b98146abd5219d29ecee1c0e7fca54528a9f7c4be76bf04fb33a10"
    else
      url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.1/goport-darwin-amd64"
      sha256 "2239287fbdc92843b009a0923fb79b9809d774ab6298a62e3cb6b5955a22f92d"
    end
  end

  on_linux do
    url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.1/goport-linux-amd64"
    sha256 "b1b354d0f5cf4828d72d374d9a235c40b02d53849a6487a87b704b6a50af87ff"
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
