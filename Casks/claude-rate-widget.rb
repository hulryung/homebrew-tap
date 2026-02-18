cask "claude-rate-widget" do
  version "1.4.1"
  sha256 "dcc4d5dc2a3f17eda1c7f47f7e6129694f87f817b3a0a887489ee5a972ceed5a"

  url "https://github.com/hulryung/cc-rate-widget/releases/download/v#{version}/ClaudeRateWidget-v#{version}.dmg"
  name "Claude Rate Widget"
  desc "macOS widget that monitors Claude Code rate limits"
  homepage "https://rate.huconn.xyz/"

  depends_on macos: ">= :sonoma"

  app "Claude Rate Widget.app"

  zap trash: [
    "~/Library/Containers/com.huconn.CCRateWidget",
    "~/Library/Group Containers/group.com.huconn.CCRateWidget",
  ]
end
