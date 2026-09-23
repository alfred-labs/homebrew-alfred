cask "littleswitch" do
  version "0.6.4"
  sha256 "3f5342ec59fa2d7c73a7263ec67bef6c17d4c2d78a36ea2bdd747691be5f377d"

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
