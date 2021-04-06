# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitro < Formula
  desc "Nitro is a speedy Docker-based local development environment tuned for Craft CMS"
  homepage "https://getnitro.sh/"
  version "2.0.7"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/craftcms/nitro/releases/download/2.0.7/nitro_darwin_x86_64.tar.gz"
    sha256 "bcbfe5c0ca8d88d5801f09003341809cf591f1d47a991705ecfd5ebd93cba205"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/craftcms/nitro/releases/download/2.0.7/nitro_darwin_arm64.tar.gz"
    sha256 "ddabf56415309caa935c7361a9dcf46f254900e40ba6f7aa23b38a540f268adc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/craftcms/nitro/releases/download/2.0.7/nitro_linux_x86_64.tar.gz"
    sha256 "604f3aee479289d00a7a202450cb43846d592a2f262a4c25da6e72768cf3187c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/craftcms/nitro/releases/download/2.0.7/nitro_linux_arm64.tar.gz"
    sha256 "71fb46fb7bba3e652760de29d2e733794b8cc2b05bdfb50ff678e5dafc70f35e"
  end

  def install
    bin.install "nitro"
  end

  def caveats; <<~EOS
    Initialize Nitro by running
      nitro init
  EOS
  end

  test do
    system "#{bin}/nitro --version"
  end
end
