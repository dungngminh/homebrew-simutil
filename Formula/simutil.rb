# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v1.1.0/simutil-macos-arm64.tar.gz"
      sha256 "6233977b6ec06c43e0b19d2bb1635865515260d36d2970f157b13c11742b3b4d"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v1.1.0/simutil-macos-x64.tar.gz"
      sha256 "de45ccdef5602b721521ab2fdf8341b0e3619bf5b9937b81920110b0637d886a"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/dungngminh/simutil/releases/download/v1.1.0/simutil-linux-x64.tar.gz"
    sha256 "2d0ee06e36f83d60b8e89fe772b45d47199d39e2df74e9e09811d733faefbf17"

    def install
      bin.install "simutil-linux-x64" => "simutil"
    end
  end

  test do
    assert_match "Simutil v#{version}", shell_output("#{bin}/simutil version")
  end
end
