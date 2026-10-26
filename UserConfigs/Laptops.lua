-- /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  #
-- Laptop-related binds and devices (migrated from Laptops.conf)

local home = os.getenv("HOME")
local mainMod = "SUPER"
local scriptsDir = home .. "/.config/hypr/scripts"
local Touchpad_Device = "asue1209:00-04f3:319f-touchpad"
local TOUCHPAD_ENABLED = true

hl.bind("xf86KbdBrightnessDown", hl.dsp.exec_cmd(scriptsDir .. "/BrightnessKbd.sh --dec"), { repeating = true }) -- decrease keyboard brightness
hl.bind("xf86KbdBrightnessUp", hl.dsp.exec_cmd(scriptsDir .. "/BrightnessKbd.sh --inc"), { repeating = true }) -- increase keyboard brightness
hl.bind("xf86Launch1", hl.dsp.exec_cmd("rog-control-center")) -- ASUS Armory crate button
hl.bind("xf86Launch3", hl.dsp.exec_cmd("asusctl led-mode -n")) -- FN+F4 Switch keyboard RGB profile
hl.bind("xf86Launch4", hl.dsp.exec_cmd("asusctl profile -n")) -- FN+F5 change of fan profiles (Quiet, Balance, Performance)
hl.bind("xf86MonBrightnessDown", hl.dsp.exec_cmd(scriptsDir .. "/Brightness.sh --dec"), { repeating = true }) -- decrease monitor brightness
hl.bind("xf86MonBrightnessUp", hl.dsp.exec_cmd(scriptsDir .. "/Brightness.sh --inc"), { repeating = true }) -- increase monitor brightness
hl.bind("xf86TouchpadToggle", hl.dsp.exec_cmd(scriptsDir .. "/TouchPad.sh")) -- disable touchpad
hl.bind(mainMod .. " + F6", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --now")) -- screenshot
hl.bind(mainMod .. " + SHIFT + F6", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --area")) -- screenshot (area)
hl.bind(mainMod .. " + CTRL + F6", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --in5")) -- screenshot (5 secs delay)
hl.bind(mainMod .. " + ALT + F6", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --in10")) -- screenshot (10 secs delay)
hl.bind("ALT + F6", hl.dsp.exec_cmd(scriptsDir .. "/ScreenShot.sh --active")) -- screenshot (active window only)

hl.device({
    name = Touchpad_Device,
    enabled = TOUCHPAD_ENABLED,
})

hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "intl",
    },
})
