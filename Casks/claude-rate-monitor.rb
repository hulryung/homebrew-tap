cask "claude-rate-monitor" do
  version "1.11.0"
  sha256 "6d321ec78416d3fc88d96184f5169a4909c1ce323efae85c5eb4d5120213b218"

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
