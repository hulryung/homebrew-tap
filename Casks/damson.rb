cask "damson" do
  version "0.11.1"
  sha256 "956cc82771b7b93afe8becc1171d047cd4b3f3b015c4e8ca4d960feeb2fa3a98"

  url "https://github.com/hulryung/damson/releases/download/v#{version}/Damson-#{version}.dmg"
  name "Damson"
  desc "GPU-accelerated terminal with smooth scrolling and Korean input"
  homepage "https://damson.app/"

  livecheck do
    url "https://raw.githubusercontent.com/hulryung/damson/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Damson.app"
  binary "#{appdir}/Damson.app/Contents/Resources/damson-cli"
  binary "#{appdir}/Damson.app/Contents/Resources/damson-crew"
  binary "#{appdir}/Damson.app/Contents/Resources/damson-computer"

  zap trash: [
    "~/Library/Application Support/Damson",
    "~/Library/Caches/app.damson.terminal",
    "~/Library/HTTPStorages/app.damson.terminal",
    "~/Library/Preferences/app.damson.terminal.plist",
  ]
end
