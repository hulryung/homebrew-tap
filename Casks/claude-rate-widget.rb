cask "claude-rate-widget" do
  version "1.9.0"
  sha256 "a0441c8b607aa02885aa1719973c5a8dc58fdad4c18d8d3603e4ce467684b159"

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
