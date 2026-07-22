cask "ai-usage-bar" do
  version "1.0.0"
  sha256 "d3ecede0d27ab544514dba4855a5cce7c88c96b43649f973d1431a314337640c"

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
