cask "markdown-prism" do
  version "0.4.4"
  sha256 "5a37567f5bd2169d0d86615bf46940531f887550106fd2dfe228fd856033150a"

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
