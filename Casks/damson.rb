cask "damson" do
  version "0.11.0"
  sha256 "4ed1bfbed7233c8cd82c61a866ec280b3a7a8e8086efe0912555754d9764b444"

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
