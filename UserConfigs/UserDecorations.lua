-- /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  #
-- Decorations (migrated from UserDecorations.conf)
-- Colors come from wallust; regenerated on wallpaper change into
-- wallust/wallust-hyprland.lua (template: ~/.config/wallust/templates/colors-hyprland.lua)

local ok, c = pcall(require, "wallust.wallust-hyprland")
if not ok or type(c) ~= "table" then
    -- fallback palette if wallust hasn't generated the lua colors yet
    c = { color0 = "rgb(504F52)", color10 = "rgb(383443)", color12 = "rgb(777178)", color15 = "rgb(F2EDE8)" }
end

hl.config({
    general = {
        border_size = 2,
        gaps_in = 4,
        gaps_out = 6,
        col = {
            active_border = c.color10,
        },
    },
    decoration = {
        rounding = 5,
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        fullscreen_opacity = 1.0,
        dim_inactive = true,
        dim_strength = 0.1,
        dim_special = 0.8,
        shadow = {
            enabled = true,
            range = 3,
            render_power = 1,
            color = c.color12,
            color_inactive = c.color10,
        },
        blur = {
            enabled = false,
            size = 6,
            passes = 2,
            ignore_opacity = true,
            new_optimizations = true,
            special = true,
            popups = true,
        },
    },
    group = {
        col = {
            border_active = c.color15,
        },
        groupbar = {
            col = {
                active = c.color0,
            },
        },
    },
})
