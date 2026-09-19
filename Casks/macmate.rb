cask "macmate" do
  version "0.1.0"
  sha256 "d79cb012e2f7f6330d008a249feb26760bc75eb062e370a2d3e4e69e577e6de7"

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
