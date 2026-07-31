cask "claude-rate-widget" do
  version "1.8.0"
  sha256 "8b6faa49000e4737a80883ed5bd95538c5b8d960c293d98673df634c4526c733"

  url "https://github.com/hulryung/cc-rate-widget/releases/download/v#{version}/ClaudeRateWidget-v#{version}.dmg"
  name "Claude Rate Widget"
  desc "macOS widget that monitors Claude Code rate limits"
  homepage "https://rate.huconn.xyz/"

  depends_on macos: :sonoma

  app "Claude Rate Widget.app"

  zap trash: [
    "~/Library/Containers/com.huconn.CCRateWidget",
    "~/Library/Group Containers/group.com.huconn.CCRateWidget",
  ]
end
