class Wanix < Formula
  desc "UNIX-like operating and development environment for the browser"
  homepage "https://github.com/tractordev/wanix"
  version "0.2.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/tractordev/wanix/releases/download/v0.2/wanix_0.2_darwin_arm64.zip"
      sha256 "0440e94d1124e0839d526d0fc6d6bd8e907f1d3dc2d2c936f5dd0b39cbc3106c"
    else
      url "https://github.com/tractordev/wanix/releases/download/v0.2/wanix_0.2_darwin_amd64.zip"
      sha256 "d43f20b13c595221bc9d47fca6061ba779852b5ed87d4f87f7763468f7e9f862"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/tractordev/wanix/releases/download/v0.2/wanix_0.2_linux_arm64.zip"
      sha256 "3746eaa3661122fcbda304ba4b3958c3bb300c649a07ddf0e645de5dc95b1c61"
    else
      url "https://github.com/tractordev/wanix/releases/download/v0.2/wanix_0.2_linux_amd64.zip"
      sha256 "9c958fce53221639fb76db5f23a7d494683e5a514575223796ef350c2969ef45"
    end
  end

  def install
    bin.install "wanix"
  end
end
