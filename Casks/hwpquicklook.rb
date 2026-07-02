cask "hwpquicklook" do
  version "0.4.3"
  sha256 "8e9d772ed226c60a5dcf6749dfe9c0c32024709564c798839af583b5240e74a6"

  url "https://github.com/hulryung/hwpql/releases/download/v#{version}/HWPQuickLook-v#{version}.dmg"
  name "HWP Quick Look"
  desc "Quick Look extension and standalone viewer for HWP/HWPX documents on macOS"
  homepage "https://github.com/hulryung/hwpql"

  depends_on macos: :monterey

  app "HWPQuickLook.app"

  zap trash: [
    "~/Library/Containers/com.hwpql.HWPQuickLook.HWPPreviewer",
    "~/Library/Containers/com.hwpql.HWPQuickLook.HWPThumbnailer",
  ]
end
