cask "hiterm" do
  version "0.3.5"
  sha256 "0597353e2bafeb3fbf3d2629ebf2caff4c841584aa0a5ef1278b35e1d5186ff5"

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
