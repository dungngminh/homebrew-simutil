# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v1.0.1/simutil-macos-arm64.tar.gz"
      sha256 "2f50110bf4d94fbcd07d7cf482ae48a620017d6feec4e55dc3cfb59c1905c5f2"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v1.0.1/simutil-macos-x64.tar.gz"
      sha256 "8b7ebfa10789de02d5bafb3ba8b7c201f1769aca045b318eb725e07573ce67c8"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/dungngminh/simutil/releases/download/v1.0.1/simutil-linux-x64.tar.gz"
    sha256 "e82af3a566f4ccec58665709fb229593aaa1e0a305c53464efbe88969ddddbcc"

    def install
      bin.install "simutil-linux-x64" => "simutil"
    end
  end

  test do
    assert_match "Simutil v#{version}", shell_output("#{bin}/simutil version")
  end
end
