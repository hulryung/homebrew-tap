cask "mac-mouse-scroll-is-bulpyun" do
  version "1.1.0"
  sha256 "79f2635b62a62042cc00324108f35d59949438616000e1c505dded4d836855d2"

  url "https://github.com/hulryung/mac-mouse-scroll-is-bulpyun/releases/download/v#{version}/mac-mouse-scroll-is-bulpyun.dmg"
  name "mac-mouse-scroll-is-bulpyun"
  desc "Reverse mouse scroll direction without affecting trackpad"
  homepage "https://github.com/hulryung/mac-mouse-scroll-is-bulpyun"

  depends_on macos: ">= :ventura"

  app "mac-mouse-scroll-is-bulpyun.app"
end
