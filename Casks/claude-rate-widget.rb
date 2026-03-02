cask "claude-rate-widget" do
  version "1.5.0"
  sha256 "2eb0dba62fe3406dc1eff34be460ca7b28bf7865495a9206ae1999e629606ab8"

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
