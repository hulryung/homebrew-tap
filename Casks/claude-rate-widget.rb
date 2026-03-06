cask "claude-rate-widget" do
  version "1.5.2"
  sha256 "cb9f1d389b3cc2604bec8e3d454e12bf692e2f6e1b82c71409c3eef1c8cd31f2"

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
