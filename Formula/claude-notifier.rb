class ClaudeNotifier < Formula
  desc "macOS notifications for Claude Code with the Claude icon"
  homepage "https://github.com/keyurgovrani/claude-notifier"
  url "https://github.com/keyurgovrani/claude-notifier/releases/download/v1.1.1/claude-notifier.zip"
  sha256 "fdb5c35d320b7c033ac3a509290d9fcafb7f578423e56767f6a3841c57ccf7b4"

  depends_on "jq"
  depends_on :macos
  depends_on "terminal-notifier"

  def install
    libexec.install Dir["*"]
    (bin/"claude-notifier").write <<~SH
      #!/bin/bash
      case "$1" in
        install) exec bash "#{libexec}/install.sh" ;;
        uninstall) exec bash "#{libexec}/uninstall.sh" ;;
        *) echo "usage: claude-notifier install|uninstall" >&2; exit 1 ;;
      esac
    SH
  end

  # Brew cannot write to ~/.claude or ~/Applications, so setup is a separate step.
  def caveats
    "Run `claude-notifier install` to build the app and add the hooks to Claude Code."
  end

  test do
    assert_match "usage", shell_output("#{bin}/claude-notifier 2>&1", 1)
  end
end
