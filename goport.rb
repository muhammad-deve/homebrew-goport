class Goport < Formula
  desc "Expose localhost to the internet instantly"
  homepage "https://goport.uz"
  version "0.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.9/goport-darwin-arm64"
      sha256 "e3eed0c85b6c2e0a90b83740b383640fb65ea0b5e175ccf6a9098a02626352ef"
    else
      url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.9/goport-darwin-amd64"
      sha256 "586f3ebe3ed330bdd21eaa8cb921656ed746ba5bfc0a2d5991f50c9e72c4fac7"
    end
  end

  on_linux do
    url "https://github.com/muhammad-deve/GoPort/releases/download/v0.1.9/goport-linux-amd64"
    sha256 "dadf7733ad48bf9835be637a10ef470367c449bfd67309b93288ceeb15c2e536"
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
