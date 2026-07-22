cask "claude-usage-bar" do
  version "1.1.0"
  sha256 "66ae29114df6c3edb98228768655a7281a6215231a321dbb7b73a00306d2eb02"

  url "https://github.com/TentoSwift/ClaudeUsageBar/releases/download/v#{version}/ClaudeUsageBar.zip"
  name "Claude Usage Bar"
  desc "Show Claude usage limits (5h / weekly / per-model) in the macOS menu bar"
  homepage "https://github.com/TentoSwift/ClaudeUsageBar"

  depends_on macos: :sonoma

  app "Claude Usage Bar.app"

  caveats <<~EOS
    このアプリは ad-hoc 署名（未公証）です。Gatekeeper の警告を避けるには
    --no-quarantine を付けてインストールしてください:
      HOMEBREW_CASK_OPTS="--no-quarantine" brew install --cask tentoswift/tap/claude-usage-bar

    Claude Code にログインしていることが必要です。
  EOS
end
