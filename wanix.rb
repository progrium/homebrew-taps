class Wanix < Formula
  desc "Toolchain for Wanix virtual environments"
  homepage "https://github.com/tractordev/wanix"
  version "0.3-preview"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/tractordev/wanix/releases/download/v0.3-preview/wanix_0.3-preview_darwin_arm64.zip"
      sha256 "2a06f02ac26ed05af75bbc62f18031c16d04c4001046f6bf2820f2c469e72236"
    else
      url "https://github.com/tractordev/wanix/releases/download/v0.3-preview/wanix_0.3-preview_darwin_amd64.zip"
      sha256 "ef4b2a44b0821e50d3a15a5eb3c41ff4d67d2ddfd178ed84136877e82189b09a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/tractordev/wanix/releases/download/v0.3-preview/wanix_0.3-preview_linux_arm64.zip"
      sha256 "70ab83c39e03d1bb1c5f1d640689a59c192deae2ca48e00b3e19151cf56e0cb6"
    else
      url "https://github.com/tractordev/wanix/releases/download/v0.3-preview/wanix_0.3-preview_linux_amd64.zip"
      sha256 "47b637c8900c1e7e11486e6b96295cf06895d96231cbf8fbe19383b8e260269b"
    end
  end

  def install
    bin.install "wanix"
  end
end
