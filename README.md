<div align="center">

<img src="pic.svg" alt="Fedora Dotfiles" width="900">

# 懲 Fedora Dotfiles

**Sway, Tmux, Waybar & Neovim configuration for daily development**

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

