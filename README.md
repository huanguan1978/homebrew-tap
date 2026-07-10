# Avatar Homebrew Tap

English | [简体中文](README_zh.md)

A personal Homebrew tap for macOS tools.

Built around a simple promise: privacy first, no ads, no forced sign-up, and practical tools you can use right away.

GitHub repository: https://github.com/huanguan1978/homebrew-tap

Terminology guide (EN/ZH): [TERMINOLOGY.md](TERMINOLOGY.md)

What you will find here:
- CLI tools (`ft`, `chapose`)
- Desktop apps (`chabox`, `fileshows`, `gai`)

## Quick Start

```shell
brew tap huanguan1978/tap
```

Note: Homebrew packages in this repository are published via this custom tap (`huanguan1978/tap`), not Homebrew core (`homebrew/core`).

## Available Packages

| Package | Type | Focus | Install | Notes |
| --- | --- | --- | --- | --- |
| `ft` | CLI | High-performance file operations and workflow automation | `brew install --cask huanguan1978/tap/ft` | [GitHub](https://github.com/huanguan1978/ft) |
| `chapose` | CLI | Fast, script-friendly encryption for files | `brew install --cask huanguan1978/tap/chapose` | [GitHub](https://github.com/huanguan1978/chacrypt/tree/main/chapose) |
| `chabox` | GUI | Offline secure vault for local data protection | `brew install --cask huanguan1978/tap/chabox` | [GitHub](https://github.com/huanguan1978/chacrypt/tree/main/chabox) |
| `fileshows` | GUI | Visual file search and batch operations | `brew install --cask huanguan1978/tap/fileshows` | [Docs](https://webpath.iche2.com/fssdoc/en/) |
| `gai` | GUI | Beginner-friendly generative AI workspace | `brew install --cask huanguan1978/tap/gai` | [Docs](https://webpath.iche2.com/gaidoc/en/) |

## Tool Details

### ft (CLI)

`ft` is a high-performance engine for file management and automation. It combines glob matching, file metadata filters (size/time), MIME filtering, and regex processing for precise batch workflows.

Learn more:
- GitHub: https://github.com/huanguan1978/ft

Supported platforms:
- macOS 14+ (Sonoma and later, Intel and Apple Silicon)
- Linux (x86_64, ARM64, RISC-V 64-bit via Formula)

```shell
# Install (recommended prebuilt package)
brew install --cask huanguan1978/tap/ft

# Optional: install from Formula
brew install huanguan1978/tap/ft

# Optional: install with MacPorts
sudo port install ft

# Verify
ft --version
ft --help
```

MacPorts page: https://ports.macports.org/port/ft/

### chapose (CLI)

`chapose` is a professional encryption CLI designed for speed, reliability, and automation-friendly terminal workflows.

Learn more:
- GitHub: https://github.com/huanguan1978/chacrypt/tree/main/chapose

Supported platforms:
- macOS 14+ (Sonoma and later)

```shell
# Install (recommended prebuilt package)
brew install --cask huanguan1978/tap/chapose

# Optional: install from Formula
brew install huanguan1978/tap/chapose

# Optional: install with MacPorts
sudo port install chapose

# Verify
chapose --version
```

MacPorts page: https://ports.macports.org/port/chapose/

### Homebrew vs MacPorts (Quick Note)

- MacPorts generally emphasizes source-based builds, with stronger local build customization.
- Homebrew generally emphasizes prebuilt bottles, with faster install and out-of-the-box usage.
- This is a general tendency, not an absolute rule: Homebrew can also build from source, and MacPorts also provides some binary support.
- On one machine, it is usually best to stick with one package manager for similar CLI tools to avoid mixed PATH and dependency sources.

### chabox (GUI)

`chabox` is an offline-first secure vault focused on protecting sensitive files locally before they ever leave your device.

Learn more:
- GitHub: https://github.com/huanguan1978/chacrypt/tree/main/chabox

```shell
brew install --cask huanguan1978/tap/chabox
```

### fileshows (GUI)

`fileshows` is a visual companion to `ft`, built for file search, filtering, and repeatable batch workflows from a desktop interface.

Learn more:
- Docs: https://webpath.iche2.com/fssdoc/en/

```shell
brew install --cask huanguan1978/tap/fileshows
```

### gai (GUI)

`gai` is a beginner-friendly generative AI app with a local-first workflow, on-demand connectivity, and practical controls for learning by doing.

Learn more:
- Docs: https://webpath.iche2.com/gaidoc/en/
- PyGai (connector): https://github.com/huanguan1978/pygai

```shell
brew install --cask huanguan1978/tap/gai
```

## Uninstall

```shell
# Remove one package
brew uninstall --cask huanguan1978/tap/<package>

# Untap repository
brew untap huanguan1978/tap
```

