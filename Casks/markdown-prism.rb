cask "markdown-prism" do
  version "0.4.4"
  sha256 "4faf445f50119f476fa28eef5fef8627028c38af29496e8dbd424a9760d1f412"

  url "https://github.com/hulryung/markdown-prism/releases/download/v#{version}/MarkdownPrism-#{version}.dmg"
  name "Markdown Prism"
  desc "Native macOS Markdown viewer and editor with live preview"
  homepage "https://prism.huconn.xyz"

  depends_on macos: ">= :sonoma"

  app "MarkdownPrism.app"

  zap trash: [
    "~/Library/Containers/com.markdownprism.app",
    "~/Library/Saved Application State/com.markdownprism.app.savedState",
  ]
end
