class Wanix < Formula
  desc "Toolchain for Wanix virtual environments"
  homepage "https://github.com/tractordev/wanix"
  version "0.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/tractordev/wanix/releases/download/v0.3/wanix_0.3_darwin_arm64.zip"
      sha256 "670520e60728bfe00ab4f8cda1d814c5260811977184eed0987c02356878491e"
    else
      url "https://github.com/tractordev/wanix/releases/download/v0.3/wanix_0.3_darwin_amd64.zip"
      sha256 "61fb03ba2247c62ab5d35344abbe5556ff8f1fe19e0ad3e5f2f1ae7708773dcc"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/tractordev/wanix/releases/download/v0.3/wanix_0.3_linux_amd64.zip"
      sha256 "f3e8bb0f489147db40e95baa86173f5c2cdba65611a7fbdbc2687d6b9486f1e9"
    else
      url "https://github.com/tractordev/wanix/releases/download/v0.3-preview/wanix_0.3-preview_linux_amd64.zip"
      sha256 "1a04a3b9d0a7f60849fcf8678641bc5152e3e5c4aed34e213598748da061d09b"
    end
  end

  def install
    bin.install "wanix"
  end
end
