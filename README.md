# fatihsenel/tap

Homebrew tap for [FolderServe](https://github.com/fatihsenel/FolderServe), a macOS app that serves folders over HTTP on
localhost with live reload, an API proxy and a request log.

## Install

```bash
brew install --cask fatihsenel/tap/folderserve
```

The app is signed with a Developer ID certificate and notarized by Apple. It needs macOS 14 or later.

If Homebrew refuses to load the cask because the tap is untrusted, run `brew trust fatihsenel/tap` once and install again.

## Update and remove

```bash
brew upgrade --cask folderserve
brew uninstall --cask folderserve        # add --zap to remove its settings too
```

## Maintainers

To publish a new FolderServe release, update `version` and `sha256` in `Casks/folderserve.rb` (the SHA-256 is on the release page,
and `shasum -a 256 FolderServe-<version>.zip` prints it), then run `brew style --cask fatihsenel/tap/folderserve`.
