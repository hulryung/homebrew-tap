cask "hwpquicklook" do
  version "0.4.0"
  sha256 "2a24b94b61a0e85c48f7c3c4fded37f9e914bd2287acc03e2137227d8b7b96d4"

  url "https://github.com/hulryung/hwpql/releases/download/v#{version}/HWPQuickLook-v#{version}.dmg"
  name "HWP Quick Look"
  desc "Quick Look extension and standalone viewer for HWP/HWPX documents on macOS"
  homepage "https://github.com/hulryung/hwpql"

  depends_on macos: ">= :monterey"

  app "HWPQuickLook.app"

  zap trash: [
    "~/Library/Containers/com.hwpql.HWPQuickLook.HWPPreviewer",
    "~/Library/Containers/com.hwpql.HWPQuickLook.HWPThumbnailer",
  ]
end
