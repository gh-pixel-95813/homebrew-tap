cask "macmate-x64" do
  version "0.3.0"
  sha256 "9a00b1cc02b3b4a4da099aa7844323215352465fb6b023a2e439291a2ef39a2b"

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
