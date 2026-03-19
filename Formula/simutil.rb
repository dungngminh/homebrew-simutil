# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.1.0/simutil-macos-arm64.tar.gz"
      sha256 "e0e48894423594236677b48c2d39c2729b8dfc479725fe01562d210ec1ea07a5"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.1.0/simutil-macos-x64.tar.gz"
      sha256 "4684c576719e95644fd71c4fc8755367ca7adfef2732128ef29e62f4aeaa3790"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  test do
    assert_match "simutil", shell_output("#{bin}/simutil --version", 2)
  end
end
