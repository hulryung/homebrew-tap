cask "markdown-prism" do
  version "0.7.2"
  sha256 "e1e25f68e374bd83de10914f1bfac4de625e46070d89d43dea2018bbedab19b5"

  url "https://github.com/hulryung/markdown-prism/releases/download/v#{version}/MarkdownPrism-#{version}.dmg"
  name "Markdown Prism"
  desc "Native macOS Markdown viewer and editor with live preview"
  homepage "https://prism.huconn.com"

  depends_on macos: :sonoma

  app "MarkdownPrism.app"

  zap trash: [
    "~/Library/Containers/com.markdownprism.app",
    "~/Library/Saved Application State/com.markdownprism.app.savedState",
  ]
end
