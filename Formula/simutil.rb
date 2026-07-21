# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.8.1/simutil-macos-arm64.tar.gz"
      sha256 "2e2c830f6889c258bcef65306e238cd879fce567199588d021874c5aa74ad4a6"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.8.1/simutil-macos-x64.tar.gz"
      sha256 "04009f8f85a67bb79175b7a927d028a7525a4df950121a5a5c29bc8851a517c1"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/dungngminh/simutil/releases/download/v0.8.1/simutil-linux-x64.tar.gz"
    sha256 "9a55dc55a318271853256b70ebbb7db3b170d4909afb2822a691f49e855765de"

    def install
      bin.install "simutil-linux-x64" => "simutil"
    end
  end

  test do
    assert_match "Simutil v#{version}", shell_output("#{bin}/simutil version")
  end
end
