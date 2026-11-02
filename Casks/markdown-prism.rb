cask "markdown-prism" do
  version "0.7.9"
  sha256 "36aa4a5c4b55b1a6e64ddd29fbe6ede9f330302b2816aee9a0f12aa7e34b6ac8"

  url "https://github.com/hulryung/markdown-prism/releases/download/v#{version}/MarkdownPrism-#{version}.dmg"
  name "Markdown Prism"
  desc "Native macOS Markdown viewer and editor with live preview"
  homepage "https://prism.hulryung.com"

  depends_on macos: :sonoma

  app "MarkdownPrism.app"

  zap trash: [
    "~/Library/Containers/com.markdownprism.app",
    "~/Library/Saved Application State/com.markdownprism.app.savedState",
  ]
end
