cask "hangulkeychanger" do
  version "2.3.0"
  sha256 "7fe3b849436e2576707bcb0bfb7621361715a8c1e5db18e47b84bab99d2f3948"

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
