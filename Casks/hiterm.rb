cask "hiterm" do
  version "0.3.1"
  sha256 "ea3f4681970cc634d5dc3f4e2724415c8f327085cead4a709f5cf593991def46"

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
