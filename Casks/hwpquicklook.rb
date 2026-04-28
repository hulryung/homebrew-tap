cask "hwpquicklook" do
  version "0.4.1"
  sha256 "b8d176c6a3850c15dacedfffcb44380a49365a4ce9373d501a6fe81d3020653d"

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
