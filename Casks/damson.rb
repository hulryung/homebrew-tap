cask "damson" do
  version "0.12.0"
  sha256 "0dbe74d0db4852c26a15cda97d8e899a56b6553b036c4df6b3ac0bbca2d12177"

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
