cask "alfred-app" do
  version "0.9.4"
  sha256 "9377acc1336ced2ab73b6b47f001af72ff37e4bd771e6be192c871b4e8612e0a"
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
