# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.2.1/simutil-macos-arm64.tar.gz"
      sha256 "484fd08083de8277801d446f878147e48ca3f8a65c6e7cf67c859a046dc8417d"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.2.1/simutil-macos-x64.tar.gz"
      sha256 "a5ec0864f64268c7c073821df67c612b81ee39083a469c84290b5f3e51e4ecc7"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  test do
    assert_match "simutil", shell_output("#{bin}/simutil --version", 2)
  end
end
