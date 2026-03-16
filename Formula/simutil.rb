# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.0.2/simutil-macos-arm64.tar.gz"
      sha256 "ed31591a8b73a83daa8cbff98b49f31881da79c161e7bda00885b5b0e6859f23"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.0.2/simutil-macos-x64.tar.gz"
      sha256 "7c0800fd0dcc7d3e6db73c0089ef1351df89a5f9a5f03ac64e76c6c70f228615"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  test do
    assert_match "simutil", shell_output("#{bin}/simutil --version", 2)
  end
end
