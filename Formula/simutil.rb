# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.3.2/simutil-macos-arm64.tar.gz"
      sha256 "7a4fb0d9891c80679d85c3ce98ea99193572fa5b25a68024a9aba705a6c8fe19"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.3.2/simutil-macos-x64.tar.gz"
      sha256 "56ad1628282184d9655886892727571929111002c447b03175b9bd5733303f84"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  test do
    assert_match "simutil", shell_output("#{bin}/simutil --version", 2)
  end
end
