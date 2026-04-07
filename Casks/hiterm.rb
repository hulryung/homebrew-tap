cask "hiterm" do
  version "0.3.4"
  sha256 "efa99962fd6ec55ad31a0a117f8420cd19351eba8d02b2e3e0a5d119d841e5a5"

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
