cask "alfred-app" do
  version "0.1.4"
  sha256 "f3dcdc0918b0b35a6f395d9a8b679041fe3e9fdc93ff52c17fc46b2973df4eb8"
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
