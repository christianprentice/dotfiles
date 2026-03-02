# Dotfiles
Personal configurations managed with [chezmoi](https://www.chezmoi.io/).
This settings are aimed at GNU/Linux (specificaly rpm based machines)

## 🖥️ System Overview
This system settings include:
    Essential dev tools:
    - **Shell:** [Fish](https://fishshell.com/)
    - **Terminals:** [Ghostty](https://ghostty.org/), [WezTerm](https://wezfurlong.org/wezterm/)
    - **Multiplexer:** [Zellij](https://zellij.dev/)
    - **Editor:** [Neovim](https://neovim.io/) (config in `~/.config/nvim`)

    Sway environment configurations:
    - **Window Manager:** [Sway](https://swaywm.org/)
    - **Status Bar:** [Waybar](https://github.com/Alexays/Waybar)
    - **Launcher:** [Wofi](https://hg.sr.ht/~scoopta/wofi)
    - **Idle Daemon:** [Swayidle](https://github.com/swaywm/swayidle)

## 🛠️ Installation
These dotfiles are managed by `chezmoi`. To apply them to a new system:

1. **[Install chezmoi](https://www.chezmoi.io/install/)**

2. **Initialize and apply:**
   ```bash
   chezmoi init --apply https://github.com/CP-prentice/dotfiles.git
   ```

## 🚀 Highlights
### Neovim Configuration
- Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management.
- Features: LSP support, Telescope, Treesitter, Harpoon, Fugitive, and more.
- Theme: Carbonfox (derived from [Nightfox](https://github.com/EdenEast/nightfox.nvim))

### Fish Shell
- Custom autopairs
- Full vim motions

### Scripts
Located in `~/Scripts/`:
- `install-0xProto-custom-fonts.sh`: Installs (0xProto-custom)[https://github.com/christianprentice/0xProto-custom] fonts.
- `update-system.sh`: A simple dnf system update and cargo-update script.

## 🎨 Visuals
Sway wallpapers are stored in `~/Pictures/Wallpapers/`.

## 📄 License
No license is issued at this time
