cask "hwpquicklook" do
  version "0.4.2"
  sha256 "b68ed14b6cc42032639ec91e930dcb97c1130546564cca978f6941e2f19675d2"

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
