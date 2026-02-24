cask "markdown-prism" do
  version "0.3.0"
  sha256 "22af84b0edf0e1c1bf5297aeb91df5de99c2e8c4b73e022849a1fdd8c98c98cc"

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
