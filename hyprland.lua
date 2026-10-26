-- /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  #
-- Migrated from hyprland.conf (hyprlang) to Lua for Hyprland 0.55+.
-- The old .conf files are kept alongside as a rollback: delete/rename this
-- file and Hyprland falls back to hyprland.conf (until 0.57).
-- always refer to Hyprland wiki: https://wiki.hypr.land/

local home = os.getenv("HOME")

-- Initial boot script to apply initial wallpapers, theming, new settings etc.
-- As long as ~/.config/hypr/.initial_startup_done exists, the script exits early.
hl.on("hyprland.start", function()
    hl.exec_cmd(home .. "/.config/hypr/initial-boot.sh")
end)

-- Sourcing external config files (paths relative to this file)
require("configs.Keybinds")            -- Pre-configured keybinds

-- ## This is where you want to start tinkering
require("UserConfigs.Startup_Apps")    -- start-up packages
require("UserConfigs.ENVariables")     -- Environment variables
require("UserConfigs.Monitors")        -- monitor config
require("monitors")                    -- nwg-displays layout (HDMI above laptop)
require("UserConfigs.Laptops")         -- laptop related
require("UserConfigs.LaptopDisplay")   -- laptop display related
require("UserConfigs.WindowRules")     -- Window Rules and Layer Rules
require("UserConfigs.UserDecorations") -- Decorations
require("UserConfigs.UserAnimations")  -- Animations
require("UserConfigs.UserKeybinds")    -- your own keybinds
require("UserConfigs.UserSettings")    -- Main Hyprland Settings
require("UserConfigs.WorkspaceRules")  -- Hyprland workspaces

hl.config({
    input = {
        kb_layout = "us",
        kb_options = "compose:ralt",
    },
})
