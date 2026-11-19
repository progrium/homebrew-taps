class Taragen < Formula
  desc "Fast, minimal static site generator"
  homepage "https://github.com/progrium/taragen"
  version "0.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/progrium/taragen/releases/download/v0.2/taragen-darwin-arm64.zip"
      sha256 "acad8601b57897901a177623c086903b37de80d86be05d6a24c74fd2ebb40a9b"
    else
      url "https://github.com/progrium/taragen/releases/download/v0.2/taragen-darwin-amd64.zip"
      sha256 "f5beec6561e5e12a6fbbc79309d63f8a3f4212d587388f7de551148a3beb9bfb"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/progrium/taragen/releases/download/v0.2/taragen-linux-arm64.zip"
      sha256 "668b7364cf71bb2e473e8dcb92d6b83022fcca548b0d95ddcbb44b06a89a9eaa"
    else
      url "https://github.com/progrium/taragen/releases/download/v0.2/taragen-linux-amd64.zip"
      sha256 "b07f670839bd76b8848f33c611e988c1acd4e2f9373cbd1092771b23a45a9bc2"
    end
  end

  def install
    bin.install "taragen"
  end

  test do
    assert_match "v0.2", shell_output("#{bin}/taragen -v")
  end
end
