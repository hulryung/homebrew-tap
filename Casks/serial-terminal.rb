cask "serial-terminal" do
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/hulryung/serial-rs/releases/download/v#{version}/Serial-Terminal_#{version}_aarch64.dmg"
    sha256 "d207373153d6cf09ef5ef911c56d057ba3505d5dd829d5ea8d3a7ea8c93bb23f"
  else
    url "https://github.com/hulryung/serial-rs/releases/download/v#{version}/Serial-Terminal_#{version}_x64.dmg"
    sha256 "82d07c4e62f2cba7b12510588fc2b3ebbf175a8c61d220a17057622a6865fb7a"
  end

  name "Serial Terminal"
  desc "A modern serial terminal app"
  homepage "https://github.com/hulryung/serial-rs"

  app "Serial Terminal.app"

  zap trash: [
    "~/Library/Application Support/com.serialrs.terminal",
    "~/Library/Caches/com.serialrs.terminal",
    "~/Library/Preferences/com.serialrs.terminal.plist",
  ]
end
