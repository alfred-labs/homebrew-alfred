cask "alfred-app" do
  version "0.3.1"
  sha256 "a166d2b1b625b80a8c3b6f2f77df77c9d9c41e39ef53acd48ee1a2b5e53196f5"
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
