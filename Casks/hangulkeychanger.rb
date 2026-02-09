cask "hangulkeychanger" do
  version "2.2.0"
  sha256 "cc70683ed435c523860581aeb09efd98dc19cab8ee51c95f33b81df3a9aadd0b"

  url "https://github.com/hulryung/HangulKeyChanger/releases/download/v#{version}/HangulCommandApp.dmg"
  name "Hangul Key Changer"
  desc "Remap keys for Korean/English input switching on macOS"
  homepage "https://github.com/hulryung/HangulKeyChanger"

  depends_on macos: ">= :sonoma"

  app "HangulCommandApp.app"

  zap trash: [
    "~/Library/LaunchAgents/com.hangulcommand.keymap.plist",
  ]
end
