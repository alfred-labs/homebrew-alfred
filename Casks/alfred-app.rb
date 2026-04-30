cask "alfred-app" do
  version "0.0.0"
  sha256 "59f1943e11150a8fc3bcfd5d95336a7396da3ae96f93cf051655c98f000f75cf"

  url "https://github.com/alfred-labs/alfred-releases/releases/download/v#{version}/Alfred-#{version}-darwin-arm64.dmg",
      verified: "github.com/alfred-labs/alfred-releases/"
  name "Alfred"
  desc "Local-first desktop app for AI-assisted knowledge workflows"
  homepage "https://github.com/alfred-labs/alfred-releases"

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
