cask "simutil-desktop" do
  version "0.3.0"
  sha256 "0974c81d77f864f72babd24c829bb9ef32c50e316c32656f8c663883276e6fe7"

  url "https://github.com/dungngminh/simutil/releases/download/app-v#{version}/SimUtil-macos.dmg"
  name "SimUtil"
  desc "Stream and control Android emulators and iOS simulators side by side"
  homepage "https://github.com/dungngminh/simutil"

  depends_on macos: ">= :monterey"
  # adb for Android devices, ffmpeg for recordings; scrcpy-server ships in
  # the app.
  depends_on cask: "android-platform-tools"
  depends_on formula: "ffmpeg"

  app "SimUtil.app"

  # Unsigned builds carry no notarization ticket; without this Gatekeeper
  # reports the app as damaged. Drop once releases are notarized.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/SimUtil.app"]
  end

  zap trash: [
    "~/Library/Application Support/me.dungngminh.simutil",
    "~/Library/Caches/me.dungngminh.simutil",
    "~/Library/Preferences/me.dungngminh.simutil.plist",
  ]
end
