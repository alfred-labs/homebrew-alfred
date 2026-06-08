cask "alfred-app" do
  version "0.7.4"
  sha256 "3b6c8959fcb10526c7b8c5068b6ea37b404c719e2d3d891656fc206e3f190c81"
  url "https://github.com/alfred-labs/alfred-releases/releases/download/v#{version}/Alfred-#{version}-darwin-arm64.dmg",
      verified: "github.com/alfred-labs/alfred-releases/"
  name "Alfred"
  desc "Local-first desktop app for AI-assisted knowledge workflows"
  homepage "https://github.com/alfred-labs/alfred-releases"

  auto_updates true

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Alfred.app", target: "Alfred.app"

  zap trash: [
    "~/.alfred",
    "~/Library/Application Support/Alfred",
    "~/Library/Logs/Alfred",
    "~/Library/Preferences/com.alfred.desktop.plist",
    "~/Library/Saved Application State/com.alfred.desktop.savedState",
  ]
end
