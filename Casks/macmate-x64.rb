cask "macmate-x64" do
  version "0.2.0"
  sha256 "f6437ff41c6a7576619d35c90ab74b35a46e6dac31a97ba1a6e306de80b3bd10"

  url "https://github.com/gh-pixel-95813/MacMate/releases/download/v#{version}/MacMate_#{version}_x64.dmg"
  name "MacMate (Intel)"
  desc "Free, open-source macOS cleaner built with Tauri 2 + Vue 3 (Intel build)"
  homepage "https://github.com/gh-pixel-95813/MacMate"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :intel

  app "MacMate.app"

  zap trash: [
    "~/Library/Preferences/com.macmate.app.plist",
    "~/Library/Application Support/com.macmate.app",
    "~/.macmate",
  ]
end
