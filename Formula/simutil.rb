# typed: false
# frozen_string_literal: true

class Simutil < Formula
  desc "TUI application for launching Android Simulators / iOS Simulators"
  homepage "https://github.com/dungngminh/simutil"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/simutil/releases/download/cli-v1.3.0/simutil-macos-arm64.tar.gz"
      sha256 "648609b96646b05eb2378c2bb0261ab7d26db5f1762c712c937b648a4d52d2ea"

      def install
        bin.install "simutil-macos-arm64" => "simutil"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/simutil/releases/download/cli-v1.3.0/simutil-macos-x64.tar.gz"
      sha256 "703fb2bdabed3cbebb0c586790744cbdf2cc01e9b379965fa318a9fcea48a4bc"

      def install
        bin.install "simutil-macos-x64" => "simutil"
      end
    end
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/dungngminh/simutil/releases/download/cli-v1.3.0/simutil-linux-x64.tar.gz"
    sha256 "e5a8bf4868eeabd436009306d72e5dcf82df069cc1399603bdd75b25fbaf217d"

    def install
      bin.install "simutil-linux-x64" => "simutil"
    end
  end

  test do
    assert_match "Simutil v#{version}", shell_output("#{bin}/simutil version")
  end
end
