# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v1.0.0/simutil-macos-arm64.tar.gz"
      sha256 "184076c48f8d9be8b072876ae4cae20a4fcdc804f67c5fae6786bd7f16745fed"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v1.0.0/simutil-macos-x64.tar.gz"
      sha256 "77dc4867aede3e1a78d14487ac92745157ae830ea2d1ccf6683edaafd6f8f645"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/dungngminh/simutil/releases/download/v1.0.0/simutil-linux-x64.tar.gz"
    sha256 "4f2e0f986affac27078675076ccbd8a96369eea83172c58eeed4457d5b754c7d"

    def install
      bin.install "simutil-linux-x64" => "simutil"
    end
  end

  test do
    assert_match "Simutil v#{version}", shell_output("#{bin}/simutil version")
  end
end
