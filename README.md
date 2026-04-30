# Alfred Homebrew Tap

Official Homebrew tap for installing Alfred on Apple Silicon Macs.

This repository contains the cask definition only. Public release artifacts are hosted as GitHub Release assets in `alfred-labs/alfred-releases`.

## Install

```bash
brew tap alfred-labs/alfred
brew install --cask alfred-labs/alfred/alfred-app
```

## Upgrade

```bash
brew update
brew upgrade --cask alfred-labs/alfred/alfred-app
```

## Uninstall

```bash
brew uninstall --cask alfred-labs/alfred/alfred-app
```

## What This Repo Contains

- `Casks/alfred-app.rb`: the Homebrew cask used to install Alfred

## Releases

New Alfred Apple Silicon releases are published as signed/notarized DMG assets in:

- `https://github.com/alfred-labs/alfred-releases/releases`

The cask in this repository is updated to point at those release assets.
