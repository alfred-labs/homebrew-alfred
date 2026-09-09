# Alfred Labs Homebrew Tap

Homebrew tap for macOS applications published by Alfred Labs.

This repository is used to publish Homebrew cask definitions. Release artifacts
are hosted in each application's public GitHub releases repository.

## LittleSwitch

LittleSwitch is a native menu bar app that routes Claude Desktop, Claude Code,
Codex, and OpenCode to model providers through a local gateway.

Requires an Apple Silicon Mac running macOS 14 Sonoma or later.

### Install

```sh
brew install --cask alfred-labs/alfred/littleswitch
```

Open **LittleSwitch** from Applications after installation.

### Upgrade

LittleSwitch includes an updater. To update through Homebrew, finish any sessions
using the gateway and quit LittleSwitch, then run:

```sh
brew update
brew upgrade --cask --greedy alfred-labs/alfred/littleswitch
```

`--greedy` includes apps that have their own updater.

### Uninstall

Disconnect connected clients in LittleSwitch to restore their settings, then
quit the app before uninstalling:

```sh
brew uninstall --cask alfred-labs/alfred/littleswitch
```

Configuration, client-profile restoration data, and Keychain credentials are
retained. Adding `--zap` also removes LittleSwitch's caches, preferences, and
saved window state; it preserves configuration and client-profile restoration
data in Application Support.

### Releases

- [Public releases and DMG downloads](https://github.com/alfred-labs/little-switch-releases/releases)
- Cask definition: [`Casks/littleswitch.rb`](Casks/littleswitch.rb)

For each new release, publish the signed and notarized DMG first, then update
`version` and `sha256` in the cask. Keep published versioned DMGs unchanged so
their checksums remain valid.
