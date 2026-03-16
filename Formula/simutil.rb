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
      sha256 "6805d8d0592994f93949c3c299f3d4147543a7f31355938f16a0814695f701a4"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.0.3/simutil-macos-x64.tar.gz"
      sha256 "a0e401e0088de134594390e7662d9ff990e09a4f3d20817bc82eae92bc4b23ce"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  test do
    assert_match "simutil", shell_output("#{bin}/simutil --version", 2)
  end
end
