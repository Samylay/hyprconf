-- /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  #
-- Monitors (migrated from Monitors.conf). Empty output = fallback rule for any monitor.
-- Last matching rule wins, same as the old `monitor=` lines.

hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1 })
hl.monitor({ output = "", mode = "highrr", position = "auto", scale = 1 })
hl.monitor({ output = "", mode = "highres", position = "auto", scale = 1 })
