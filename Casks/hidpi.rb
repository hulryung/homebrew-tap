cask "hidpi" do
  version "1.0.0"
  sha256 "beaa407217de928d8b4985101945f03460cfcd771e9547f53f99adcc47ba88e3"

  url "https://github.com/hulryung/hidpi/releases/download/v#{version}/HiDPI-#{version}.dmg"
  name "HiDPI"
  desc "macOS external monitor HiDPI management and DDC/CI brightness control"
  homepage "https://github.com/hulryung/hidpi"

  depends_on macos: ">= :ventura"

  app "HiDPI.app"

  zap trash: [
    "~/Library/Application Support/com.huconn.hidpi",
  ]
end
