cask "littleswitch" do
  version "0.4.8"
  sha256 "013417edfa8cff3164bb30ce166c96713bf2638dc713e38e13a3c263494d5c3b"

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
