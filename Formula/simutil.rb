# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.6.0/simutil-macos-arm64.tar.gz"
      sha256 "49ede5763fb99e53e08770b719866edfed6811241dd75e0e09f85faf927171ce"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.6.0/simutil-macos-x64.tar.gz"
      sha256 "156d3b1a407f77ebe5ffd085c14c1c424ea4b369e637d089944d33878d7fdf30"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  test do
    assert_match "simutil", shell_output("#{bin}/simutil --version", 2)
  end
end
