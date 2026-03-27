cask "hangulkeychanger" do
  version "2.4.0"
  sha256 "b87b6952be762809bab0f212eea476156088b7a974a79508b560fe0d28c8b7d6"

  url "https://github.com/hulryung/HangulKeyChanger/releases/download/v#{version}/Hangul.Key.Changer-#{version}.dmg"
  name "Hangul Key Changer"
  desc "Remap keys for Korean/English input switching on macOS"
  homepage "https://github.com/hulryung/HangulKeyChanger"

  depends_on macos: ">= :sonoma"

  app "Hangul Key Changer.app"

  zap trash: [
    "~/Library/LaunchAgents/com.hangulcommand.keymap.plist",
  ]
end
