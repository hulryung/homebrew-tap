cask "markdown-prism" do
  version "0.7.10"
  sha256 "0e0f994b9c74fcb2dc0af7465aecb9323ba5515ea1cf5fcd53454cee9a479036"

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
