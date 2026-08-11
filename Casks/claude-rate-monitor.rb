cask "claude-rate-monitor" do
  version "1.11.1"
  sha256 "69d13e542422df7a6a6fe446e005c9d26c1aa7f03b44e2e288646d6a800382d9"

  url "https://github.com/hulryung/claude-rate-monitor/releases/download/v#{version}/ClaudeRateMonitor-v#{version}.dmg"
  name "Claude Rate Monitor"
  desc "Menu bar app that monitors Claude Code token usage and cost"
  homepage "https://rate.hulryung.com/"

  depends_on macos: :sonoma

  app "Claude Rate Monitor.app"

  zap trash: [
    "~/Library/Application Support/Claude Rate Monitor",
    "~/Library/Application Support/Claude Rate Widget",
    "~/Library/Caches/com.dkkang.cc-rate-widget",
    "~/Library/Group Containers/group.com.dkkang.cc-rate-widget",
    "~/Library/HTTPStorages/com.dkkang.cc-rate-widget",
    "~/Library/Preferences/com.dkkang.cc-rate-widget.plist",
  ]
end
