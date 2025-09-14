# Kansō Tmux

A clean, elegant Tmux theme inspired by the [Kansō VSCode theme](https://github.com/webhooked/kanso-vscode) - an evolution of the original Kanagawa theme. This theme invites *focus*, not attention, with its thoughtful color selections and balanced visual hierarchy.

Built upon the excellent foundation of [Tokyo Night Tmux](https://github.com/janoamaral/tokyo-night-tmux) by [@janoamaral](https://github.com/janoamaral), this version adapts the beautiful Kansō color palette for tmux, providing a cohesive experience across your development environment.

The perfect companion for [Kansō VSCode theme](https://github.com/webhooked/kanso-vscode) and other Kansō-themed applications.

## About this theme

I have been loving the [Kansō VSCode theme](https://github.com/webhooked/kanso-vscode) and the [Tokyo Night Tmux](https://github.com/janoamaral/tokyo-night-tmux) and wanted to mix these together in this fork for a consistent colour scheme workflow.

## Credits

This theme is built upon the excellent work of:

- **[@janoamaral](https://github.com/janoamaral)** - Original creator of [Tokyo Night Tmux](https://github.com/janoamaral/tokyo-night-tmux) which provides the robust foundation and feature set
- **[@webhooked](https://github.com/webhooked)** - Creator of the beautiful [Kansō VSCode theme](https://github.com/webhooked/kanso-vscode) that inspired the color palette and design philosophy

Special thanks to the open source community for creating these amazing tools that make me spend more time on config hell.

## Extra

### Dynamic Theme Setup with dark-notify

For macOS users who want their tmux theme to automatically switch between light and dark modes based on system appearance, you can use [dark-notify](https://github.com/cormacrelf/dark-notify) by [@cormacrelf](https://github.com/cormacrelf).

#### Installation

Install dark-notify using Homebrew:

```bash
brew install cormacrelf/tap/dark-notify
```

#### Setup Instructions

1. **Create theme configuration files**:
   Create a `themes` directory in your tmux config:
   ```bash
   mkdir -p ~/.config/tmux/themes
   ```

2. **Create theme-specific configuration files**:

   **`~/.config/tmux/themes/kanso-zen.conf`** (for dark mode):
   ```bash
   # Kansō Zen theme configuration
   set -g @tokyo-night-tmux_theme night
   set -g @tokyo-night-tmux_transparent 1 # Optional
   # Add any other dark mode specific settings here
   ```

   **`~/.config/tmux/themes/kanso-pearl.conf`** (for light mode):
   ```bash
   # Kansō Pearl theme configuration
   set -g @tokyo-night-tmux_theme day
   set -g @tokyo-night-tmux_transparent 1 # Optional
   # Add any other light mode specific settings here
   ```

3. **Add to your `tmux.conf`**:

   Add the tmux-dark-notify plugin and configure it:
   ```bash
   # Add the plugin
   set -g @plugin 'erikw/tmux-dark-notify'
   
   # Configure theme paths
   set -g @dark-notify-theme-path-light '$HOME/.config/tmux/themes/kanso-pearl.conf'
   set -g @dark-notify-theme-path-dark '$HOME/.config/tmux/themes/kanso-zen.conf'
   
   # Source the theme file if it exists (add this at the end of your tmux.conf)
   if-shell "test -e ~/.local/state/tmux/tmux-dark-notify-theme.conf" \
        "source-file ~/.local/state/tmux/tmux-dark-notify-theme.conf"
   ```

5. **Reload tmux configuration**:
   ```bash
   tmux source-file ~/.config/tmux/tmux.conf
   ```