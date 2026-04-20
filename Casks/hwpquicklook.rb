cask "hwpquicklook" do
  version "0.3.0"
  sha256 "c1b4f4d7bf9ef4f8ea9c879ba0c65e240f0735d3f11a0d34045c819f1d7582d2"

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
