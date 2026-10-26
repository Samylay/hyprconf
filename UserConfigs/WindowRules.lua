-- /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  #
-- Window rules (migrated from WindowRules.conf).
-- Rules are evaluated top to bottom; last match takes precedence.

local rule = hl.window_rule

-- Tags
rule({ match = { class = "^([Ff]irefox|org.mozilla.firefox|[Ff]irefox-esr)$" }, tag = "+browser" })
rule({ match = { class = "^([Gg]oogle-chrome(-beta|-dev|-unstable)?)$" }, tag = "+browser" })
rule({ match = { class = "^(chrome-.+-Default)$" }, tag = "+browser" }) -- Chrome PWAs
rule({ match = { class = "^([Mm]icrosoft-edge(-stable|-beta|-dev|-unstable))$" }, tag = "+browser" })
rule({ match = { class = "^(Brave-browser(-beta|-dev|-unstable)?)$" }, tag = "+browser" })
rule({ match = { class = "^([Tt]horium-browser|[Cc]achy-browser)$" }, tag = "+browser" })
rule({ match = { class = "^(zen-alpha)$" }, tag = "+browser" })
rule({ match = { class = "^(Alacritty|kitty|kitty-dropterm)$" }, tag = "+terminal" })
rule({ match = { class = "^([Tt]hunderbird|org.gnome.Evolution)$" }, tag = "+email" })
rule({ match = { class = "^(eu.betterbird.Betterbird)$" }, tag = "+email" })
rule({ match = { class = "^(codium|codium-url-handler|VSCodium)$" }, tag = "+projects" })
rule({ match = { class = "^(VSCode|code-url-handler)$" }, tag = "+projects" })
rule({ match = { class = "^(jetbrains-.+)$" }, tag = "+projects" }) -- JetBrains IDEs
rule({ match = { class = "^(com.obsproject.Studio)$" }, tag = "+screenshare" })
rule({ match = { class = "^([Dd]iscord|[Ww]ebCord|[Vv]esktop)$" }, tag = "+im" })
rule({ match = { class = "^([Ff]erdium)$" }, tag = "+im" })
rule({ match = { class = "^([Ww]hatsapp-for-linux)$" }, tag = "+im" })
rule({ match = { class = "^(org.telegram.desktop|io.github.tdesktop_x64.TDesktop)$" }, tag = "+im" })
rule({ match = { class = "^(teams-for-linux)$" }, tag = "+im" })
rule({ match = { class = "^(gamescope)$" }, tag = "+games" })
rule({ match = { class = "^(steam_app_\\d+)$" }, tag = "+games" })
rule({ match = { class = "^([Ss]team)$" }, tag = "+gamestore" })
rule({ match = { title = "^([Ll]utris)$" }, tag = "+gamestore" })
rule({ match = { class = "^(com.heroicgameslauncher.hgl)$" }, tag = "+gamestore" })
rule({ match = { class = "^([Tt]hunar|org.gnome.Nautilus|[Pp]cmanfm-qt)$" }, tag = "+file-manager" })
rule({ match = { class = "^(app.drey.Warp)$" }, tag = "+file-manager" })
rule({ match = { class = "^([Ww]aytrogen)$" }, tag = "+wallpaper" })
rule({ match = { class = "^([Aa]udacious)$" }, tag = "+multimedia" })
rule({ match = { title = "^(ROG Control)$" }, tag = "+settings" })
rule({ match = { class = "^(wihotspot(-gui)?)$" }, tag = "+settings" }) -- wifi hotspot
rule({ match = { class = "^([Bb]aobab|org.gnome.[Bb]aobab)$" }, tag = "+settings" }) -- Disk usage analyzer
rule({ match = { class = "^(gnome-disks|wihotspot(-gui)?)$" }, tag = "+settings" })
rule({ match = { title = "(Kvantum Manager)" }, tag = "+settings" })
rule({ match = { class = "^(file-roller|org.gnome.FileRoller)$" }, tag = "+settings" }) -- archive manager
rule({ match = { class = "^(nm-applet|nm-connection-editor|blueman-manager)$" }, tag = "+settings" })
rule({ match = { class = "^(pavucontrol|org.pulseaudio.pavucontrol|com.saivert.pwvucontrol)$" }, tag = "+settings" })
rule({ match = { class = "^(nwg-look|qt5ct|qt6ct|[Yy]ad)$" }, tag = "+settings" })
rule({ match = { class = "(xdg-desktop-portal-gtk)" }, tag = "+settings" })
rule({ match = { class = "^(org.kde.polkit-kde-authentication-agent-1)$" }, tag = "+settings" })
rule({ match = { class = "^([Rr]ofi)$" }, tag = "+settings" })
rule({ match = { class = "^(gnome-system-monitor|org.gnome.SystemMonitor|io.missioncenter.MissionCenter)$" }, tag = "+viewer" }) -- system monitor
rule({ match = { class = "^(evince)$" }, tag = "+viewer" }) -- document viewer
rule({ match = { class = "^(eog|org.gnome.Loupe)$" }, tag = "+viewer" }) -- image viewer

-- Position
rule({ match = { class = "([Tt]hunar)", title = "negative:(.*[Tt]hunar.*)" }, center = true })
rule({ match = { title = "^(ROG Control)$" }, center = true })
rule({ match = { title = "^(Keybindings)$" }, center = true })
rule({ match = { class = "^(pavucontrol|org.pulseaudio.pavucontrol|com.saivert.pwvucontrol)$" }, center = true })
rule({ match = { class = "^([Ww]hatsapp-for-linux)$" }, center = true })
rule({ match = { class = "^([Ff]erdium)$" }, center = true })
rule({ match = { title = "^(Picture-in-Picture)$" }, move = { "monitor_w * 0.72", "monitor_h * 0.07" } })

-- Idle inhibit
rule({ match = { class = ".*" }, idle_inhibit = "fullscreen" })
rule({ match = { title = ".*" }, idle_inhibit = "fullscreen" })
rule({ match = { fullscreen = true }, idle_inhibit = "fullscreen" })

-- Workspace assignment
rule({ match = { tag = "email*" }, workspace = "1" })
rule({ match = { tag = "browser*" }, workspace = "2" })
rule({ match = { tag = "gamestore*" }, workspace = "5" })
rule({ match = { tag = "im*" }, workspace = "7" })
rule({ match = { tag = "games*" }, workspace = "8" })
rule({ match = { tag = "screenshare*" }, workspace = "4 silent" })
rule({ match = { class = "^(virt-manager)$" }, workspace = "6 silent" })
rule({ match = { class = "^(.virt-manager-wrapped)$" }, workspace = "6 silent" })
rule({ match = { tag = "multimedia*" }, workspace = "9 silent" })

-- Floating
rule({ match = { tag = "wallpaper*" }, float = true })
rule({ match = { tag = "settings*" }, float = true })
rule({ match = { tag = "viewer*" }, float = true })
rule({ match = { class = "([Zz]oom|onedriver|onedriver-launcher)$" }, float = true })
rule({ match = { class = "(org.gnome.Calculator)", title = "(Calculator)" }, float = true })
rule({ match = { class = "^(mpv|com.github.rafostar.Clapper)$" }, float = true })
rule({ match = { class = "^([Qq]alculate-gtk)$" }, float = true })
rule({ match = { class = "^([Ff]erdium)$" }, float = true })
rule({ match = { title = "^(Picture-in-Picture)$" }, float = true })
rule({ match = { class = "(codium|codium-url-handler|VSCodium)", title = "negative:(.*codium.*|.*VSCodium.*)" }, float = true })
rule({ match = { class = "^(com.heroicgameslauncher.hgl)$", title = "negative:(Heroic Games Launcher)" }, float = true })
rule({ match = { class = "^([Ss]team)$", title = "negative:^([Ss]team)$" }, float = true })
rule({ match = { class = "([Tt]hunar)", title = "negative:(.*[Tt]hunar.*)" }, float = true })
rule({ match = { initial_title = "(Add Folder to Workspace)" }, float = true })
rule({ match = { initial_title = "(Add Folder to Workspace)" }, size = { "monitor_w * 0.7", "monitor_h * 0.6" } })
rule({ match = { initial_title = "(Open Files)" }, float = true })
rule({ match = { initial_title = "(Open Files)" }, size = { "monitor_w * 0.7", "monitor_h * 0.6" } })

-- Sizes
rule({ match = { tag = "wallpaper*" }, size = { "monitor_w * 0.7", "monitor_h * 0.7" } })
rule({ match = { tag = "settings*" }, size = { "monitor_w * 0.7", "monitor_h * 0.7" } })
rule({ match = { class = "^([Ww]hatsapp-for-linux)$" }, size = { "monitor_w * 0.6", "monitor_h * 0.7" } })
rule({ match = { class = "^([Ff]erdium)$" }, size = { "monitor_w * 0.6", "monitor_h * 0.7" } })

-- Picture-in-Picture extras
rule({ match = { title = "^(Picture-in-Picture)$" }, pin = true })
rule({ match = { title = "^(Picture-in-Picture)$" }, keep_aspect_ratio = true })

-- Games
rule({ match = { tag = "games*" }, no_blur = true })
rule({ match = { tag = "games*" }, fullscreen = true })
