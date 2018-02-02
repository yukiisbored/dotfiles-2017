local themes_path = "/home/yuki/.config/awesome/themes/"

-- {{{ Main
local theme = {}
theme.wallpaper = themes_path .. "yuki/wallpaper.jpg"
-- }}}

-- {{{ Styles
theme.font      = "Lato 10"

-- {{{ Colors
theme.fg_normal  = "#a1c0d1"
theme.fg_focus   = "#80c0d8"
theme.fg_urgent  = "#88a8b7"
theme.bg_normal  = "#06202c"
theme.bg_focus   = "#11506f"
theme.bg_urgent  = "#0074a5"
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.useless_gap   = 8
theme.border_width  = 2
theme.border_normal = "#0b7eae"
theme.border_focus  = "#7acae3"
theme.border_marked = "#0074a5"
-- }}}

-- {{{ Menu
theme.menu_height = 15
theme.menu_width  = 100
-- }}}

-- {{{ Misc
theme.awesome_icon           = themes_path .. "yuki/awesome-icon.png"
theme.menu_submenu_icon      = themes_path .. "default/submenu.png"
-- }}}


-- {{{ Layout
theme.layout_tile       = themes_path .. "yuki/layouts/tile.png"
theme.layout_tileleft   = themes_path .. "yuki/layouts/tileleft.png"
theme.layout_tilebottom = themes_path .. "yuki/layouts/tilebottom.png"
theme.layout_tiletop    = themes_path .. "yuki/layouts/tiletop.png"
theme.layout_fairv      = themes_path .. "yuki/layouts/fairv.png"
theme.layout_fairh      = themes_path .. "yuki/layouts/fairh.png"
theme.layout_spiral     = themes_path .. "yuki/layouts/spiral.png"
theme.layout_dwindle    = themes_path .. "yuki/layouts/dwindle.png"
theme.layout_max        = themes_path .. "yuki/layouts/max.png"
theme.layout_fullscreen = themes_path .. "yuki/layouts/fullscreen.png"
theme.layout_magnifier  = themes_path .. "yuki/layouts/magnifier.png"
theme.layout_floating   = themes_path .. "yuki/layouts/floating.png"
theme.layout_cornernw   = themes_path .. "yuki/layouts/cornernw.png"
theme.layout_cornerne   = themes_path .. "yuki/layouts/cornerne.png"
theme.layout_cornersw   = themes_path .. "yuki/layouts/cornersw.png"
theme.layout_cornerse   = themes_path .. "yuki/layouts/cornerse.png"
-- }}}

return theme
