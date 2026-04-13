cask "hwpquicklook" do
  version "0.2.0"
  sha256 "2896321d1e1e8e7fe4efa9b346c208035f7c497da88f0222769d892e9ca40d7d"

  url "https://github.com/hulryung/hwpql/releases/download/v#{version}/HWPQuickLook.zip"
  name "HWP Quick Look"
  desc "Quick Look extension for HWP and HWPX documents on macOS"
  homepage "https://github.com/hulryung/hwpql"

  depends_on macos: ">= :monterey"

  app "HWPQuickLook.app"

  zap trash: [
    "~/Library/Containers/com.hwpql.HWPQuickLook.HWPPreviewer",
    "~/Library/Containers/com.hwpql.HWPQuickLook.HWPThumbnailer",
  ]
end
