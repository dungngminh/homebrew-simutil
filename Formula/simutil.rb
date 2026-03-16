# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.0.3/simutil-macos-arm64.tar.gz"
      sha256 "e11d7ad0d7de588ba9eb6f5b6af9d6315d768f661c08f6724226e3666c8bca73"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.0.3/simutil-macos-x64.tar.gz"
      sha256 "6325a4f6033f679e43d4127acab61f5b731c9784afa93e6a42fa3870e49d0a24"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  test do
    assert_match "simutil", shell_output("#{bin}/simutil --version", 2)
  end
end
