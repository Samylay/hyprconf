-- /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  #
-- Startup apps (migrated from Startup_Apps.conf; exec-once -> hyprland.start event)

local home = os.getenv("HOME")
local scriptsDir = home .. "/.config/hypr/scripts"

hl.on("hyprland.start", function()
    hl.exec_cmd("swww-daemon --format xrgb && sleep 1 && swww img " .. home .. "/.config/hypr/wallpaper_effects/.wallpaper_current")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd(scriptsDir .. "/Polkit.sh")
    hl.exec_cmd("waybar")
    hl.exec_cmd("nm-applet --indicator")
    hl.exec_cmd("swaync")
    hl.exec_cmd("ags")
    hl.exec_cmd("blueman-applet")
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("pypr")
end)
