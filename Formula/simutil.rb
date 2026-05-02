# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.5.0/simutil-macos-arm64.tar.gz"
      sha256 "d6be02cf6a7a79228fc642bb3087baa834555a7d60dab56ff0a1ba632aa99305"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.5.0/simutil-macos-x64.tar.gz"
      sha256 "2b3aaad4e8557a074773329c8bf76b50ab671f3d4231576a8240edf4e022265f"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  test do
    assert_match "simutil", shell_output("#{bin}/simutil --version", 2)
  end
end
