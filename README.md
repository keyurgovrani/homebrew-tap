# keyurgovrani/homebrew-tap

Homebrew formulas for my tools. Each tool's code and releases live in its own
repo; this tap only holds the recipes that point at those releases.

## Use

```bash
brew tap keyurgovrani/tap
brew trust keyurgovrani/tap
brew install <formula>
```

Homebrew only loads formulas from taps you trust, which is why `brew trust` is there.

## Formulas

| Formula | Repo | After install |
| --- | --- | --- |
| `claude-notifier` | [keyurgovrani/claude-notifier](https://github.com/keyurgovrani/claude-notifier) | Run `claude-notifier install` |

Each tool's release workflow updates its formula here, so `brew upgrade` picks
up new versions after `brew update`.
