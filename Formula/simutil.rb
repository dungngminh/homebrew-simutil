# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/v0.4.1/simutil-macos-arm64.tar.gz"
      sha256 "fc193984c65ddb44e737c89f792ef26f937a41e7588ab4c287c0958c83964919"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/v0.4.1/simutil-macos-x64.tar.gz"
      sha256 "29dc5721d0ae3f8d9f26b5f4e2669ab32d6a672d81b80981c09fbb247892c69a"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  test do
    assert_match "simutil", shell_output("#{bin}/simutil --version", 2)
  end
end
