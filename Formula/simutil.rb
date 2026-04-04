# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.4.0/simutil-macos-arm64.tar.gz"
      sha256 "29a6ae8318cab64ab4d191464687b3c6c6be64975aad89c6890a3a719d7dad0f"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.4.0/simutil-macos-x64.tar.gz"
      sha256 "a99dc5954fbd081ec85f1ce2d8297aea7ff01544ba63036bfa92a56ac46b6a9d"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  test do
    assert_match "simutil", shell_output("#{bin}/simutil --version", 2)
  end
end
