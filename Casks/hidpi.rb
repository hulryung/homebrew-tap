cask "hidpi" do
  version "1.0.0"
  sha256 "8af23c93614d61b636b4076c819a82553d0ad58e84369e9dead88e2715906a1c"

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
