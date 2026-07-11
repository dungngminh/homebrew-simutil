# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.7.0/simutil-macos-arm64.tar.gz"
      sha256 "629100f006503edc1c1ba7ecf4410218435645299e311bd006448396e159e24c"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.7.0/simutil-macos-x64.tar.gz"
      sha256 "18cc298cf412bbcf9b7c018ffa6d80078b81a26bfdb52b48c6f50b9378e52248"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/dungngminh/simutil/releases/download/v0.7.0/simutil-linux-x64.tar.gz"
    sha256 "8a1f0fe2a5a7f639f886abaf0deec016612895f57b066b570767fd4075a12424"

    def install
      bin.install "simutil-linux-x64" => "simutil"
    end
  end

  test do
    assert_match "Simutil v#{version}", shell_output("#{bin}/simutil version")
  end
end
