cask "claude-usage-bar" do
  version "1.0.0"
  sha256 "a88d9df31ffbc9edb8d8f9dd29146b2767320ee381205e4cd127b575d1fc8a7c"

  url "https://github.com/TentoSwift/ClaudeUsageBar/releases/download/v#{version}/ClaudeUsageBar.zip"
  name "Claude Usage Bar"
  desc "Show Claude usage limits (5h / weekly / per-model) in the macOS menu bar"
  homepage "https://github.com/TentoSwift/ClaudeUsageBar"

  depends_on macos: ">= :sonoma"

  app "Claude Usage Bar.app"

  caveats <<~EOS
    このアプリは ad-hoc 署名（未公証）です。Gatekeeper の警告を避けるには
    --no-quarantine を付けてインストールしてください:
      brew install --cask tentoswift/tap/claude-usage-bar --no-quarantine

    Claude Code にログインしていることが必要です。
  EOS
end
