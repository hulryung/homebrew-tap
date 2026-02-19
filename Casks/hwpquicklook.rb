cask "hwpquicklook" do
  version "1.0.0"
  sha256 "ebc996c61100adf2d4b99b749d8e05b0c22b50032026505ef76fb6efbc9bd590"

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
