cask "mac-mouse-scroll-is-bulpyun" do
  version "1.0.0"
  sha256 "d5f900ef6877f0a3b117d0869b9f71a3b00674e722c5ca7ad933e7f58074e380"

  url "https://github.com/hulryung/mac-mouse-scroll-is-bulpyun/releases/download/v#{version}/mac-mouse-scroll-is-bulpyun.dmg"
  name "mac-mouse-scroll-is-bulpyun"
  desc "Reverse mouse scroll direction without affecting trackpad"
  homepage "https://github.com/hulryung/mac-mouse-scroll-is-bulpyun"

  depends_on macos: ">= :ventura"

  app "mac-mouse-scroll-is-bulpyun.app"
end
