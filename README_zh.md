# Avatar Homebrew Tap

[English](README.md) | 简体中文

面向 macOS 的个人 Homebrew Tap，收录我长期维护的工具应用。

坚持一条简单原则：隐私优先、无广告、免强制注册，上手即用。

GitHub 仓库：https://github.com/huanguan1978/homebrew-tap

术语对照指南（中英统一用词）：[TERMINOLOGY.md](TERMINOLOGY.md)

本 Tap 包含：
- CLI 工具（ft、chapose）
- GUI 桌面应用（chabox、fileshows、gai）

## 快速开始

```shell
brew tap huanguan1978/tap
```

说明：本仓库中的 Homebrew 包来自自建 Tap（`huanguan1978/tap`），不是 Homebrew 官方仓库（homebrew/core）。

## 可用应用

| 应用 | 类型 | 简介 | 安装命令 | 了解更多 |
| --- | --- | --- | --- | --- |
| ft | CLI | 高性能文件处理与自动化工作流 | brew install --cask huanguan1978/tap/ft | [GitHub](https://github.com/huanguan1978/ft) |
| chapose | CLI | 轻量且易集成的文件加密工具 | brew install --cask huanguan1978/tap/chapose | [GitHub](https://github.com/huanguan1978/chacrypt/tree/main/chapose) |
| chabox | GUI | 离线优先的本地安全资料库 | brew install --cask huanguan1978/tap/chabox | [GitHub](https://github.com/huanguan1978/chacrypt/tree/main/chabox) |
| fileshows | GUI | 可视化文件检索与批处理工作流 | brew install --cask huanguan1978/tap/fileshows | [文档](https://webpath.iche2.com/fssdoc/zh/) |
| gai | GUI | 新手友好的生成式 AI 工作台 | brew install --cask huanguan1978/tap/gai | [文档](https://webpath.iche2.com/gaidoc/zh/) |

## 应用介绍

### ft（CLI）

高性能文件处理与自动化引擎，结合 Glob、文件元数据筛选（大小/时间）、MIME 过滤与正则处理，适合精细化批处理工作流。

了解更多：
- GitHub：https://github.com/huanguan1978/ft

支持平台：
- macOS 14+（Sonoma 及以上，Intel 与 Apple Silicon）
- Linux（x86_64、ARM64、RISC-V 64 位，使用 Formula 安装）

```shell
# 推荐：预编译包
brew install --cask huanguan1978/tap/ft

# 可选：Formula 安装
brew install huanguan1978/tap/ft

# 可选：MacPorts 安装
sudo port install ft

# 验证
ft --version
ft --help
```

MacPorts 页面：https://ports.macports.org/port/ft/

### chapose（CLI）

面向终端自动化场景的专业级加密 CLI，轻量、可靠、易集成。

了解更多：
- GitHub：https://github.com/huanguan1978/chacrypt/tree/main/chapose

支持平台：
- macOS 14+（Sonoma 及以上）

```shell
# 推荐：预编译包
brew install --cask huanguan1978/tap/chapose

# 可选：Formula 安装
brew install huanguan1978/tap/chapose

# 可选：MacPorts 安装
sudo port install chapose

# 验证
chapose --version
```

MacPorts 页面：https://ports.macports.org/port/chapose/

### Homebrew 与 MacPorts（简要区别）

- MacPorts 通常以源码编译为主，更偏向本机构建与可定制选项。
- Homebrew 通常以预编译二进制包（bottle）为主，更偏向快速安装与开箱即用。
- 以上是整体倾向而非绝对区分：Homebrew 也可源码编译，MacPorts 也提供部分二进制支持。
- 建议同一台机器尽量以一个包管理器为主安装同类 CLI，避免 PATH 与依赖来源混用。

### chabox（GUI）

离线优先的安全文件工作台，聚焦本地数据主权与敏感数据保护。

了解更多：
- GitHub：https://github.com/huanguan1978/chacrypt/tree/main/chabox

```shell
brew install --cask huanguan1978/tap/chabox
```

### fileshows（GUI）

`ft` 的可视化搭档，面向桌面用户提供文件检索、筛选与可复用批处理工作流。

了解更多：
- 文档：https://webpath.iche2.com/fssdoc/zh/

```shell
brew install --cask huanguan1978/tap/fileshows
```

### gai（GUI）

新手友好的生成式 AI 工具，强调本地优先、按需联网与“边用边学”的可控体验。

了解更多：
- 文档：https://webpath.iche2.com/gaidoc/zh/
- PyGai 连接器：https://github.com/huanguan1978/pygai

```shell
brew install --cask huanguan1978/tap/gai
```

## 卸载

```shell
# 卸载单个应用
brew uninstall --cask huanguan1978/tap/<package>

# 取消 tap
brew untap huanguan1978/tap
```
