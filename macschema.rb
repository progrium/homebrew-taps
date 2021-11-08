# This file was generated by GoReleaser. DO NOT EDIT.
class Macschema < Formula
    desc "Toolchain for generating JSON definitions for Apple APIs."
    homepage "https://github.com/progrium/macschema"
    version "0.1.0"
  
    if OS.mac?
        url "https://github.com/progrium/macschema/releases/download/v0.1.0/macschema_0.1.0.zip"
        sha256 "14180f6aac12fc8299899205c46031d30e8b8f8e4382521cafec1ae0a802804a"
    elsif OS.linux?
    end
  
    def install
        bin.install "macschema"
    end
end
