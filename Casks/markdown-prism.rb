cask "markdown-prism" do
  version "0.4.0"
  sha256 "6d9c730aa1a6624b4d44392ad185d61aa8b95c9636a2084618e29b3b79eb6da3"

  url "https://github.com/hulryung/markdown-prism/releases/download/v#{version}/MarkdownPrism-#{version}.dmg"
  name "Markdown Prism"
  desc "Native macOS Markdown viewer and editor with live preview"
  homepage "https://prism.huconn.xyz"

  depends_on macos: ">= :sonoma"

  app "Markdown Prism.app"

  zap trash: [
    "~/Library/Containers/com.markdownprism.app",
    "~/Library/Saved Application State/com.markdownprism.app.savedState",
  ]
end
