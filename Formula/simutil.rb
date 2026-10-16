# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/cli-v1.2.0/simutil-macos-arm64.tar.gz"
      sha256 "de1109026d56db7d60dc015b8984f9092f69d5ec44b86e794bc81475efd21f01"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/cli-v1.2.0/simutil-macos-x64.tar.gz"
      sha256 "043f9b9473a26f08d5c7e5b24856c546aa099ac32c44c801058dd6fe5d3b261c"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/dungngminh/simutil/releases/download/cli-v1.2.0/simutil-linux-x64.tar.gz"
    sha256 "89bc8f6624be552ff8c553fabcf432bdca88ebef6fab8299208f2793fdf06b31"

    def install
      bin.install "simutil-linux-x64" => "simutil"
    end
  end

  test do
    assert_match "Simutil v#{version}", shell_output("#{bin}/simutil version")
  end
end
