# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.0.1/simutil-macos-arm64.tar.gz"
      sha256 "c340f4dd24413764a12516ed93aea00434293aa1cb8e7d46dd512d71199bb845"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.0.1/simutil-macos-x64.tar.gz"
      sha256 "3b1e2ca190802cc04e74da56089c20a7cae042fd5b13a074af32db2e9b809b8d"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  test do
    assert_match "simutil", shell_output("#{bin}/simutil --version", 2)
  end
end
