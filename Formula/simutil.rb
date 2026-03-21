# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.2.0/simutil-macos-arm64.tar.gz"
      sha256 "addb46a47d400ba65260e23f31bbba16dc8c84ef92135dd27c83fe84f380cd9d"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.2.0/simutil-macos-x64.tar.gz"
      sha256 "65095fa6e3aff35a4527cb0f2bf0a5d20e7c8924e3095a58f3c15f303a08b7b9"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  test do
    assert_match "simutil", shell_output("#{bin}/simutil --version", 2)
  end
end
