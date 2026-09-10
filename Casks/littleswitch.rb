cask "littleswitch" do
  version "0.4.5"
  sha256 "472f7250541f3bbc50704d8a3e6a3e8c5c73499c973743a6ffce47c721d776a8"

  url "https://github.com/alfred-labs/little-switch/releases/download/v#{version}/LittleSwitch-#{version}-arm64.dmg"
  name "LittleSwitch"
  desc "Menu bar app for routing AI clients to model providers"
  homepage "https://github.com/alfred-labs/little-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "LittleSwitch.app"

  # Preserve Application Support data used to restore connected client profiles.
  zap trash: [
    "~/Library/Caches/com.alfredlabs.littleswitch",
    "~/Library/Preferences/com.alfredlabs.littleswitch.plist",
    "~/Library/Saved Application State/com.alfredlabs.littleswitch.savedState",
  ]
end
