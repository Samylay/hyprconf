# Samy's Hyprland Config

Personal Hyprland configuration based on [JaKooLit's Hyprland-Dots](https://github.com/JaKooLit/Hyprland-Dots) (v2.3.10).

## Prerequisites

This repo only contains config files — it does **not** include the scripts, binaries, and dependencies needed to run Hyprland. You need to set those up first.

### 1. Run JaKooLit's installer

Pick the installer for your distro from [JaKooLit's GitHub](https://github.com/JaKooLit). For Arch:

```
https://github.com/JaKooLit/Arch-Hyprland
```

This installs all required packages:
- `hyprland`, `hyprlock`, `hypridle`
- `waybar`, `swww`, `swaync`, `ags`
- `nm-applet`, `blueman`
- `wl-clipboard`, `cliphist`
- `rofi`, `wallust`
- and more

### 2. Clone this repo over your config

```bash
mv ~/.config/hypr ~/.config/hypr.bak
git clone https://github.com/Samylay/hyprconf.git ~/.config/hypr
```

### 3. Set up wallpapers

Put your wallpapers in `~/Pictures/wallpapers/`.

### 4. Configure your monitors

Edit `monitors.conf` and `UserConfigs/Monitors.conf` to match your display(s). Monitor names and resolutions will differ from mine — check yours with:

```bash
hyprctl monitors
```

### 5. Log into Hyprland

You're good to go. Log out and select Hyprland from your display manager.
