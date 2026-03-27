cask "hangulkeychanger" do
  version "2.3.1"
  sha256 "34e052e88de14d24a1c72e145ae9daa09694c45c4a3d8dd0ac0802e588f97883"

  url "https://github.com/hulryung/HangulKeyChanger/releases/download/v#{version}/HangulCommandApp-#{version}.dmg"
  name "Hangul Key Changer"
  desc "Remap keys for Korean/English input switching on macOS"
  homepage "https://github.com/hulryung/HangulKeyChanger"

  depends_on macos: ">= :sonoma"

  app "HangulCommandApp.app"

  zap trash: [
    "~/Library/LaunchAgents/com.hangulcommand.keymap.plist",
  ]
end
