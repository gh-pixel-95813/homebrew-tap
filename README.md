# MacMate Homebrew Tap

Homebrew Cask tap for [MacMate](https://github.com/gh-pixel-95813/MacMate) — free, open-source macOS cleaner.

## Install

### Apple Silicon (M1/M2/M3/M4)

```bash
brew tap gh-pixel-95813/tap
brew install --cask macmate
```

### Intel Mac

```bash
brew tap gh-pixel-95813/tap
brew install --cask macmate-x64
```

Or directly:

```bash
brew install --cask gh-pixel-95813/tap/macmate       # Apple Silicon
brew install --cask gh-pixel-95813/tap/macmate-x64   # Intel
```

## Update

Cask formulas are auto-updated by `update-homebrew-tap.yml` workflow in the main repo after each release.

## License

MIT
