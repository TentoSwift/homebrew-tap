cask "ai-usage-bar" do
  version "1.1.0"
  sha256 "196177809d1e0e1197f763155f55f9d6d7f46ce758589ad479daea8a2999670f"

  url "https://github.com/TentoSwift/AIUsageBar/releases/download/v#{version}/AIUsageBar.zip"
  name "AI Usage Bar"
  desc "Show Claude / Codex usage limits (5h / weekly / per-model) in the macOS menu bar"
  homepage "https://github.com/TentoSwift/AIUsageBar"

  depends_on macos: :sonoma

  app "AI Usage Bar.app"

  caveats <<~EOS
    このアプリは ad-hoc 署名（未公証）です。Gatekeeper の警告を避けるには
    --no-quarantine を付けてインストールしてください:
      HOMEBREW_CASK_OPTS="--no-quarantine" brew install --cask tentoswift/tap/ai-usage-bar

    Claude Code にログインしていることが必要です。
  EOS
end
