# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.8.0/simutil-macos-arm64.tar.gz"
      sha256 "24545d89bbc088130cd8b08dfc8c72b589dc8f504fee9939a80e70ea9d553dc0"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.8.0/simutil-macos-x64.tar.gz"
      sha256 "5a92697a800485a2e3b72bad6db28c7191e285020aca4bb587406235810a0bdf"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/dungngminh/simutil/releases/download/v0.8.0/simutil-linux-x64.tar.gz"
    sha256 "a7a5cf2925aa736ea63725d1567645b4e2eedcc5fcc2ddeb3dd8b48024fcf1f8"

    def install
      bin.install "simutil-linux-x64" => "simutil"
    end
  end

  test do
    assert_match "Simutil v#{version}", shell_output("#{bin}/simutil version")
  end
end
