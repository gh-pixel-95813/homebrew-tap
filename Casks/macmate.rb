cask "macmate" do
  version "0.2.0"
  sha256 "719a0c3bef67239648fd1f0066d6a9058e9c23bfb39bfb188fd2540529e0885d"

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
