cask "markdown-prism" do
  version "0.1.0"
  sha256 "e219d7f2d8ae50562f239a32c92c6994d0c9fca1a19d178a69525fd160e027e1"

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
