cask "hiterm" do
  version "0.2.0"
  sha256 "ab20067926302dd0ea8e42abbae5e8e7938c7fbeed51703ee9f9a27b4a9e8c42"

  url "https://github.com/hulryung/hiterm/releases/download/v#{version}/hiterm-#{version}.dmg"
  name "hiterm"
  desc "macOS-native terminal emulator built on libghostty with smooth scrolling"
  homepage "https://github.com/hulryung/hiterm"

  depends_on macos: ">= :ventura"

  app "hiterm.app"

  zap trash: [
    "~/Library/Application Support/hiterm",
    "~/Library/Preferences/com.hiterm.app.plist",
  ]
end
