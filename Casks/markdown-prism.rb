cask "markdown-prism" do
  version "0.7.11"
  sha256 "86e7d59c3cd006ce42337b705dfaf1408821d0df4102dbe174685015f11f3383"

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
