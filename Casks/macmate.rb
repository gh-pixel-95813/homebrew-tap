cask "macmate" do
  version "0.3.0"
  sha256 "735f948d1644b046d2feed9828b926f7ff8cdb180f1976d051d01ba6b280f3f9"

  url "https://github.com/gh-pixel-95813/MacMate/releases/download/v#{version}/MacMate_#{version}_aarch64.dmg"
  name "MacMate"
  desc "Free, open-source macOS cleaner built with Tauri 2 + Vue 3"
  homepage "https://github.com/gh-pixel-95813/MacMate"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "MacMate.app"

  zap trash: [
    "~/Library/Preferences/com.macmate.app.plist",
    "~/Library/Application Support/com.macmate.app",
    "~/.macmate",
  ]
end
