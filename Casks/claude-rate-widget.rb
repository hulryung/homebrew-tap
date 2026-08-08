cask "claude-rate-widget" do
  version "1.9.0"
  sha256 "a0441c8b607aa02885aa1719973c5a8dc58fdad4c18d8d3603e4ce467684b159"

  url "https://github.com/hulryung/cc-rate-widget/releases/download/v#{version}/ClaudeRateWidget-v#{version}.dmg"
  name "Claude Rate Widget"
  desc "Menu bar app that monitors Claude Code token usage and cost"
  homepage "https://rate.huconn.com/"

  depends_on macos: :sonoma

  app "Claude Rate Widget.app"

  zap trash: [
    "~/Library/Application Support/Claude Rate Widget",
    "~/Library/Caches/com.dkkang.cc-rate-widget",
    "~/Library/Group Containers/group.com.dkkang.cc-rate-widget",
    "~/Library/HTTPStorages/com.dkkang.cc-rate-widget",
    "~/Library/Preferences/com.dkkang.cc-rate-widget.plist",
  ]
end
