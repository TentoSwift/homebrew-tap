cask "claude-usage-bar" do
  version "1.0.1"
  sha256 "9c720d9ac83c7d30caecd349a7066ac30e4094d6545895c63cbce36a911baae2"

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
