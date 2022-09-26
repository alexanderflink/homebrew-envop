# typed: false
# frozen_string_literal: true

class Envop < Formula
  desc "A CLI for syncing environment variables using 1password"
  homepage "https://github.com/alexanderflink/envop/"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alexanderflink/envop/releases/download/v1.0.3/envop-x86_64-macos.tar.gz"
      sha256 "2c6433a476f31d9064ede0f706fefc66914c6f64"

      def install
        bin.install "envop"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/alexanderflink/envop/releases/download/v1.0.3/envop-aarch64-macos.tar.gz"
      sha256 "7903ecb7aa484054f6f6d2c16b15f72351c1eae5"

      def install
        bin.install "envop"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alexanderflink/envop/releases/download/v1.0.3/envop-x86_64-linux.tar.gz"
      sha256 "a4d2180c1d1b37154283dfc9eb475f28a5942a14"

      def install
        bin.install "envop"
      end
    end
  end
end
