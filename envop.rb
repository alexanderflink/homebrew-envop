# typed: false
# frozen_string_literal: true

class Envop < Formula
  desc "A CLI for syncing environment variables using 1password"
  homepage "https://github.com/alexanderflink/envop/"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alexanderflink/envop/releases/download/v1.0.5/envop-x86_64-macos.tar.gz"
      sha256 "b40ce90188d99e5fa515a0543feafa3598f83fe4636e2440f59ce4835bdb9d3b"

      def install
        bin.install "envop"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/alexanderflink/envop/releases/download/v1.0.5/envop-aarch64-macos.tar.gz"
      sha256 "bf9cf6f5ae4b4d8cde044f16f5b1626bedcf5c8e2661afb2c26bb613b546aef7"

      def install
        bin.install "envop"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alexanderflink/envop/releases/download/v1.0.5/envop-x86_64-linux.tar.gz"
      sha256 "ff82d1ec2c5ceca84565fbda5fe3193675c895dd4503ee9e46e3089260b69554"

      def install
        bin.install "envop"
      end
    end
  end
end
