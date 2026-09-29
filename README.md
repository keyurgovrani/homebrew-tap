# keyurgovrani/homebrew-tap

Homebrew formulas for my tools. Each tool's code and releases live in its own
repo; this tap only holds the recipes that point at those releases.

## Use

### Let your agent do it

Paste this into Claude Code, with the formula name filled in:

```text
Install <formula> for me from https://github.com/keyurgovrani/homebrew-tap:
run `brew tap keyurgovrani/tap`, `brew trust keyurgovrani/tap` and `brew install <formula>`.
Then follow the setup step brew prints after the install, and tell me what it did.
```

### Or do it yourself

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
