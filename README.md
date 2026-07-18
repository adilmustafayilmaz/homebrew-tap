# homebrew-tap

Homebrew tap for [Tap Spaces](https://github.com/adilmustafayilmaz/Tap-Spaces) —
tap the desk around your MacBook, and the zone you hit fires a keyboard shortcut.

```bash
brew tap adilmustafayilmaz/tap
brew trust adilmustafayilmaz/tap
brew install --cask tap-spaces
```

`brew trust` is required because Homebrew treats third-party taps as untrusted
by default. It only marks this tap as allowed to load; it grants nothing else.

Requires macOS 14 or later. The app is signed with a Developer ID certificate
and notarised by Apple, so it opens without a Gatekeeper warning.

## Uninstall

```bash
brew uninstall --cask tap-spaces
```

Calibration data lives in `~/Library/Application Support/TapSpaces`. To remove
that too:

```bash
brew uninstall --zap --cask tap-spaces
```
