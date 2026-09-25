# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.9.0/simutil-macos-arm64.tar.gz"
      sha256 "de4a9575f4856f601686189f38aab92a717a2433502ed240ce04938e063cb9f1"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.9.0/simutil-macos-x64.tar.gz"
      sha256 "fbb704b9302da34aa5589797fd01274b0cb7bb03cd49f8dc33b894d9bbc4d3cc"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/dungngminh/simutil/releases/download/v0.9.0/simutil-linux-x64.tar.gz"
    sha256 "fd8ba0a4beb1bd4159522c5ceb37ec179ed8b1ead75da030f4ebf228ffe15053"

    def install
      bin.install "simutil-linux-x64" => "simutil"
    end
  end

  test do
    assert_match "Simutil v#{version}", shell_output("#{bin}/simutil version")
  end
end
