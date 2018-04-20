local themes_path = "/home/yuki/.config/awesome/themes/"

-- {{{ Main
local theme = {}
theme.wallpaper = themes_path .. "yuki/wallpaper.jpg"
-- }}}

-- {{{ Styles
theme.font      = "Droid Sans Mono 9"

-- {{{ Colors
theme.fg_normal  = "#707070"
theme.fg_focus   = theme.fg_normal
theme.fg_urgent  = theme.fg_normal
theme.bg_normal  = "#f3f3f300"
theme.bg_focus   = "#5dc7ea"
theme.bg_urgent  = "#f59335"
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.useless_gap   = 8
theme.border_width  = 2
theme.border_normal = "#169dca"
theme.border_focus  = "#5dc7ea"
theme.border_marked = "#ff0000"
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
