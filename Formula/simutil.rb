# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.6.2/simutil-macos-arm64.tar.gz"
      sha256 "5c9e5b3926bb1c461b608c49d2089624f994d20871e7b61fe124e2c91c2b9aac"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.6.2/simutil-macos-x64.tar.gz"
      sha256 "a192012c2ed645db7ff309e45b5cd4638c86476c0c5235425ce6ca558725e71e"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/dungngminh/simutil/releases/download/v0.6.2/simutil-linux-x64.tar.gz"
    sha256 "7668a630ac21a4336e4c667a0469ba4e6b502d870838a62b3cad732053b1ed02"

    def install
      bin.install "simutil-linux-x64" => "simutil"
    end
  end

  test do
    assert_match "Simutil v#{version}", shell_output("#{bin}/simutil version")
  end
end
