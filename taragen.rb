class Taragen < Formula
  desc "Fast, minimal static site generator"
  homepage "https://github.com/progrium/taragen"
  version "0.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/progrium/taragen/releases/download/v0.2/taragen_v0.2_darwin_arm64.zip"
      sha256 "b5819f11d0f7c836a8596a2da6482cb86042f0108414e41912f851feadaa408f"
    else
      url "https://github.com/progrium/taragen/releases/download/v0.2/taragen_v0.2_darwin_amd64.zip"
      sha256 "dc06a91a85f6a631f3e7a6e55ba16bd999971ef90f0a2ebbfb440538122ca87a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/progrium/taragen/releases/download/v0.2/taragen_v0.2_linux_arm64.zip"
      sha256 "a614df0d6bdf3432225f536f9dab305e3b03b504a72716dcdda473c53c818aab"
    else
      url "https://github.com/progrium/taragen/releases/download/v0.2/taragen_v0.2_linux_amd64.zip"
      sha256 "10f8e3de2f1d84f6e5d8fcf989f69e63fd1b8b47a8d91a85626b14acef8d015e"
    end
  end

  def install
    bin.install "taragen"
  end

  test do
    assert_match "v0.2", shell_output("#{bin}/taragen -v")
  end
end
