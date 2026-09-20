cask "macmate" do
  version "0.3.0"
  sha256 "188f7b1e134a8953a32e5c6e34239978f4e2a367d6781fd18a308dd60030a45d"

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
