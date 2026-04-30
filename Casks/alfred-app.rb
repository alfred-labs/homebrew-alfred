cask "alfred-app" do
  version "0.1.0"
  sha256 "98c7103f62300ddbf01d110880e1183408df3d626215c8648fa9233a16943255"

  url "https://raw.githubusercontent.com/alfred-labs/alfred-releases/main/downloads/v#{version}/Alfred-#{version}-darwin-arm64.dmg",
      verified: "raw.githubusercontent.com/alfred-labs/alfred-releases/main/downloads/"
  name "Alfred"
  desc "Local-first desktop app for AI-assisted knowledge workflows"
  homepage "https://github.com/alfred-labs/alfred-releases"

  livecheck do
    skip "Alfred releases are published by the private binary-only release pipeline."
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
