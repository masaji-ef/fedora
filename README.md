<div align="center">

<img src="pic.svg" alt="Fedora Dotfiles" width="900">

# 懲 Fedora Dotfiles

**Sway, Tmux, Waybar & Neovim configuration for daily development**

[![Fedora](https://img.shields.io/badge/Fedora-41-51A8DD?style=for-the-badge&logo=fedora&logoColor=white)](https://fedoraproject.org/)
[![Sway](https://img.shields.io/badge/Sway-1.10-2E8B57?style=for-the-badge&logo=sway&logoColor=white)](https://swaywm.org/)
[![Tmux](https://img.shields.io/badge/Tmux-3.5-1BB91F?style=for-the-badge&logo=tmux&logoColor=white)](https://github.com/tmux/tmux)
[![Waybar](https://img.shields.io/badge/Waybar-0.12-00B4D8?style=for-the-badge&logo=wayland&logoColor=white)](https://github.com/Alexays/Waybar)
[![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

[![GitHub stars](https://img.shields.io/github/stars/masaji-ef/fedora-dotfiles?style=social)](https://github.com/masaji-ef/fedora-dotfiles/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/masaji-ef/fedora-dotfiles?style=social)](https://github.com/masaji-ef/fedora-dotfiles/network/members)
[![GitHub last commit](https://img.shields.io/github/last-commit/masaji-ef/fedora-dotfiles)](https://github.com/masaji-ef/fedora-dotfiles/commits)

[Features](#-features) •
[Installation](#-installation) •
[Structure](#-structure) •
[Components](#-components) •
[Keybindings](#-keybindings) •
[License](#-license)

</div>

---

## 📖 Description

A comprehensive dotfiles configuration for Fedora Linux, featuring:

- **Sway** — tiling Wayland compositor with i3-compatible configuration
- **Tmux** — terminal multiplexer with Rosé Pine theme
- **Waybar** — highly customizable status bar
- **Neovim** — modular editor configuration (see [modular.nvim](https://github.com/masaji-ef/modular.nvim))

Everything is organized for easy customization and portability across Fedora systems.

---

## 🛠️ Installation

### Requirements

- Fedora Linux 41+ (or any Sway-compatible distro)
- Sway 1.10+
- Tmux 3.5+
- Waybar 0.12+
- Git 2.19+

### Dependencies

```bash
# Core packages
sudo dnf install sway tmux waybar alacritty firefox rofi

# Screenshot utilities
sudo dnf install grim slurp wl-clipboard

# System utilities
sudo dnf install udiskie brightnessctl pipewire-pulseaudio pavucontrol

# Fonts (optional but recommended)
sudo dnf install jetbrains-mono-fonts google-noto-emoji-fonts

# Other optional tools
sudo dnf install neovim zsh fzf ripgrep fd-find
```

### Quick Start

```bash
git clone https://github.com/masaji-ef/fedora-dotfiles.git ~/fedora-dotfiles
cd ~/fedora-dotfiles
./install.sh
```

The installer will:

1. Create a backup of existing configs in `~/dotfiles_backup_YYYYMMDD_HHMMSS`
2. Create symlinks for all `.config` directories
3. Show you what was installed

---

<div align="center">

### ⭐ Star this repo if you find it useful!

[![GitHub stars](https://img.shields.io/github/stars/masaji-ef/fedora-dotfiles?style=for-the-badge&logo=github)](https://github.com/masaji-ef/fedora-dotfiles/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/masaji-ef/fedora-dotfiles?style=for-the-badge&logo=github)](https://github.com/masaji-ef/fedora-dotfiles/network/members)

</div>
