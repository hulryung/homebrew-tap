cask "damson" do
  version "0.10.0"
  sha256 "55add88c5441388ff7ed3ac99b3444fc756ea05f16eff81ec752dc880a5d3354"

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
