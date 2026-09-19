cask "macmate-x64" do
  version "0.1.0"
  sha256 "cb8a3ea2aa33995966646f0462bc9132521880e316b08a0241588fe693660a01"

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
