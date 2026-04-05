cask "hiterm" do
  version "0.3.2"
  sha256 "31fa95969b8074a0ec9ff93eafab31dbc11a61880312f1b5b35a433303d3ab20"

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
