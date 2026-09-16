cask "littleswitch" do
  version "0.6.2"
  sha256 "d91a48b6b66e41d41f65486aceeae86a66dcac3cc09dd69ebdadc79c8fbc96c3"

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
