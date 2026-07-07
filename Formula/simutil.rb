# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.6.1/simutil-macos-arm64.tar.gz"
      sha256 "5e6ff3c321b0d0d9c0583104f6dc319f1aca9ad046e12d27dfbebae71e8370f0"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.6.1/simutil-macos-x64.tar.gz"
      sha256 "d2e3aacbe937ea1c339587465ff1272f572fd74819444ab5f3c63bb80cb04e9b"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  test do
    assert_match "simutil", shell_output("#{bin}/simutil --version", 2)
  end
end
