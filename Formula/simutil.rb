# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.3.0/simutil-macos-arm64.tar.gz"
      sha256 "4e47189a6281b8edba1e95c8c55581dcecc7ae47fbd46e79e9bff8771ab61517"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.3.0/simutil-macos-x64.tar.gz"
      sha256 "711690bcf8f4b5329b7b3e1c7389b48e75f7dec9fdacf8290a165c510bfee7e1"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  test do
    assert_match "simutil", shell_output("#{bin}/simutil --version", 2)
  end
end
