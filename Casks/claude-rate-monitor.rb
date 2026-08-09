cask "claude-rate-monitor" do
  version "1.9.0"
  sha256 "a0441c8b607aa02885aa1719973c5a8dc58fdad4c18d8d3603e4ce467684b159"

  # 1.9.0 shipped before the app was renamed, so the asset and the bundle inside it are
  # still ClaudeRateWidget/Claude Rate Widget.app. The release workflow rewrites only
  # version and sha256 — url, name and app have to be moved by hand when the first
  # Claude Rate Monitor build ships.
  url "https://github.com/hulryung/claude-rate-monitor/releases/download/v#{version}/ClaudeRateWidget-v#{version}.dmg"
  name "Claude Rate Widget"
  desc "Menu bar app that monitors Claude Code token usage and cost"
  homepage "https://rate.hulryung.com/"

  depends_on macos: :sonoma

  app "Claude Rate Widget.app"

  zap trash: [
    "~/Library/Application Support/Claude Rate Monitor",
    "~/Library/Application Support/Claude Rate Widget",
    "~/Library/Caches/com.dkkang.cc-rate-widget",
    "~/Library/Group Containers/group.com.dkkang.cc-rate-widget",
    "~/Library/HTTPStorages/com.dkkang.cc-rate-widget",
    "~/Library/Preferences/com.dkkang.cc-rate-widget.plist",
  ]
end
