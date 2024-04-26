class Httpfs < Formula
  desc "Mount virtual filesystems based on HTTP"
  homepage "https://github.com/progrium/httpfs"
  version "0.1.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/progrium/httpfs/releases/download/v0.1/httpfs_0.1_darwin_arm64.zip"
      sha256 "eb438a542986687f23ecc52cd8350cbe1efa8769f303d47ad35fe031719b4686"
    else
      url "https://github.com/progrium/httpfs/releases/download/v0.1/httpfs_0.1_darwin_amd64.zip"
      sha256 "94347c6a43568fb407f2f13ed9921b7f05721286644a73c20f4dc0471c5f4c2c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/progrium/httpfs/releases/download/v0.1/httpfs_0.1_linux_arm64.zip"
      sha256 "35f1987520fc0933d9fd1231ad94c8df3c0a0791722e619d0b73ea8844d39c39"
    else
      url "https://github.com/progrium/httpfs/releases/download/v0.1/httpfs_0.1_linux_amd64.zip"
      sha256 "a0e8fbd5995cbd9a073c6694a871ce4903fe13987c0f5a2d3097795838c90f00"
    end
  end

  def install
    bin.install "httpfs"
  end
end
