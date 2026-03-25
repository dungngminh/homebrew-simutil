# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.3.1/simutil-macos-arm64.tar.gz"
      sha256 "0608360bc6c81d57a8601c89bb372929e6f507efd95a26785e6023001db0ff9b"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.3.1/simutil-macos-x64.tar.gz"
      sha256 "1dcefc3f21d73086c990305aa4ba768f7d298b4dbe8084e6b94aa058eb9b8ae7"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  test do
    assert_match "simutil", shell_output("#{bin}/simutil --version", 2)
  end
end
