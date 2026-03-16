# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.0.4/simutil-macos-arm64.tar.gz"
      sha256 "310fb36f9dd87150b206056378448fb29a57e145711a4af2a097672ce40cb99f"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.0.4/simutil-macos-x64.tar.gz"
      sha256 "7fc5fe8eed2ca124891681a64f5de35d17b738b4e8470f6f824d912f1e527cd1"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  test do
    assert_match "simutil", shell_output("#{bin}/simutil --version", 2)
  end
end
