# homebrew-seqlens

Homebrew tap for [SeqLens](https://seqlens.app/) — an image sequence management
tool for VFX and post-production workflows.

## Install

```sh
brew install --cask kumoproductions/seqlens/seqlens
```

Or tap first, then install:

```sh
brew tap kumoproductions/seqlens
brew install --cask seqlens
```

## Update

```sh
brew upgrade --cask seqlens
```

SeqLens also updates itself in-app, so existing installs stay current
regardless of Homebrew.

## Notes

- macOS on Apple Silicon (arm64), macOS Monterey (12) or newer.
- The cask in this repo is published automatically from the
  [seqlens](https://github.com/kumoproductions/seqlens) release pipeline. Do not
  edit it by hand; change the source cask in that repository instead.
