--[[

     Everforest Awesome WM theme
     Based on Blackburn 3.0
     github.com/lcpz

--]]

local gears = require("gears")
local lain = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi = require("beautiful.xresources").apply_dpi

local os = os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

-- colors
local everforest = {}
everforest.fg = "#D3C6AA"
everforest.gray_0 = "#7A8478"
everforest.gray_1 = "#859289"
everforest.gray_2 = "#9DA9A0"

everforest.red = "#E67E80"
everforest.orange = "#E69875"
everforest.yellow = "#DBBC7F"
everforest.green = "#A7C080"
everforest.blue = "#7FBBB3"
everforest.aqua = "#83C092"
everforest.purple = "#D699B6"

everforest.bg_d = "#1E2326"
everforest.bg_0 = "#272E33"
everforest.bg_1 = "#2E383C"
everforest.bg_2 = "#374145"
everforest.bg_3 = "#414B50"
everforest.bg_4 = "#495156"
everforest.bg_5 = "#4F5B58"

everforest.bg_r = "#4C3743"
everforest.bg_v = "#493B40"
everforest.bg_y = "#45443C"
everforest.bg_g = "#3C4841"
everforest.bg_b = "#384B55"

local theme = {}
-- notifications
theme.notification_border_width = 2
theme.notification_border_color = everforest.bg_5
theme.notification_bg = everforest.bg_1
theme.notification_fg = everforest.fg
theme.notification_opacity = 0.6
theme.notification_max_width = 500
theme.notification_max_height = 150
theme.notification_icon_size = 64
theme.notification_margin = 15

-- wallpaper stuff
local wallpaper_folder = "/home/toads/Pictures/Wallpapers/Everforest/"
theme.wallpaper_presets = {
	fish = gears.wallpaper.fit(wallpaper_folder .. "fish_art.png", s, "#232A2E"),
	forest_dark = wallpaper_folder .. "forest_dark.png",
	forest_light = wallpaper_folder .. "forest_light.png",
	lantern = wallpaper_folder .. "lantern.png",
	moons = wallpaper_folder .. "moons.png",
	mtg_frog = wallpaper_folder .. "mtg_frog.png",
	salamander_isopod = wallpaper_folder .. "salamander_isopod.png",
	snail_cats = wallpaper_folder .. "snail_cats.png",
}

-- other customization
theme.dir = os.getenv("HOME") .. "/.config/awesome/themes/everforest_1"
theme.wallpaper = theme.wallpaper_presets.snail_cats

theme.font = "JetBrainsMono Nerd Font 13"
theme.taglist_font = "JetBrainsMono Nerd Font 10"

theme.fg_normal = everforest.gray_1
theme.fg_focus = everforest.green
theme.bg_normal = everforest.bg_0
theme.bg_focus = everforest.bg_1
theme.fg_urgent = everforest.orange
theme.bg_urgent = everforest.bg_v

theme.border_width = dpi(2)
theme.border_normal = everforest.bg_1
theme.border_focus = everforest.bg_3

theme.menu_height = dpi(20)
theme.menu_width = dpi(175)

theme.menu_submenu_icon = theme.dir .. "/icons/submenu.png"
theme.awesome_icon = theme.dir .. "/icons/awesome.png"
theme.layout_tile = theme.dir .. "/icons/tile.png"
theme.layout_tileleft = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv = theme.dir .. "/icons/fairv.png"
theme.layout_fairh = theme.dir .. "/icons/fairh.png"
theme.layout_spiral = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle = theme.dir .. "/icons/dwindle.png"
theme.layout_max = theme.dir .. "/icons/max.png"
theme.layout_fullscreen = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier = theme.dir .. "/icons/magnifier.png"
theme.layout_floating = theme.dir .. "/icons/floating.png"

theme.useless_gap = 0

theme.titlebar_close_button_focus = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"
theme.titlebar_minimize_button_focus = theme.dir .. "/icons/titlebar/minimize_focus.png"
theme.titlebar_minimize_button_normal = theme.dir .. "/icons/titlebar/minimize_normal.png"

theme.icon_theme = "/home/toads/.local/share/icons/Everforest-Dark"

awful.util.tagnames = { "    ", "    ", "    ", "    ", "    " }

local markup = lain.util.markup
local gray = everforest.gray_2

-- Textclock widget
local mytextclock = wibox.widget.textclock(markup(gray, " ") .. " %I:%M %p")
mytextclock.font = theme.font

-- Calendar widget
local month_calendar = awful.widget.calendar_popup.month({
	opacity = 1,
	bg = everforest.bg_0,
	font = theme.font,
	style_month = {
		fg_color = everforest.gray_2,
		border_width = 2,
		border_color = everforest.bg_3,
	},
	style_header = {
		fg_color = everforest.green,
		bg_color = everforest.bg_g,
	},
	style_weekday = {
		fg_color = everforest.gray_0,
	},
	style_normal = {
		padding = 5,
	},
	style_focus = {
		fg_color = everforest.green,
		bg_color = everforest.bg_4,
		padding = 5,
	},
})
month_calendar:attach(mytextclock, "tr")

-- Battery widget
local bat = lain.widget.bat({
	battery = "BAT1",
	timeout = 2,
	settings = function()
		local bat_header = ""
		local bat_charging = ""
		local bat_p = bat_now.perc

		if bat_p <= 10 then
			bat_header = markup(everforest.red, "󰁺")
		elseif bat_p <= 20 then
			bat_header = markup(everforest.red, "󰁻")
		elseif bat_p <= 30 then
			bat_header = markup(everforest.yellow, "󰁼")
		elseif bat_p <= 40 then
			bat_header = markup(everforest.yellow, "󰁽")
		elseif bat_p <= 50 then
			bat_header = markup(gray, "󰁾")
		elseif bat_p <= 60 then
			bat_header = markup(gray, "󰁿")
		elseif bat_p <= 70 then
			bat_header = markup(gray, "󰂀")
		elseif bat_p <= 80 then
			bat_header = markup(gray, "󰂁")
		elseif bat_p <= 95 then
			bat_header = markup(everforest.green, "󰂂")
		else
			bat_header = markup(everforest.green, "󱟢")
		end

		if bat_now.status == "Charging" then
			bat_charging = markup(everforest.yellow, "󱐋")
		end

		widget:set_markup(
			markup.font(theme.font, bat_charging .. bat_header .. " " .. bat_p .. markup(everforest.gray_0, "%"))
		)
	end,
})

-- Volume widget (Alsa)
theme.a_status = "on"
theme.volume = lain.widget.alsa({
	cmd = "amixer -c 1",
	settings = function()
		theme.a_volume = tostring(volume_now.level) .. markup(everforest.gray_0, "%")
		theme.a_icon = ""

		if theme.a_status == "off" then
			theme.a_icon = markup(everforest.gray_0, "󰸈 ")
			theme.a_volume = markup(everforest.gray_1, "muted")
		else
			if volume_now.level <= 10 then
				theme.a_icon = markup(gray, "󰕿 ")
			elseif volume_now.level <= 60 then
				theme.a_icon = markup(gray, "󰖀 ")
			else
				theme.a_icon = markup(gray, "󰕾 ")
			end
		end

		widget:set_markup(markup.font(theme.font, theme.a_icon .. theme.a_volume))
	end,
})
-- buttons for volume widget
theme.volume.widget:buttons(awful.util.table.join(
	awful.button({}, 1, function() -- left click
		awful.spawn("kitty -e alsamixer")
	end),
	awful.button({}, 2, function() -- middle click
		awful.spawn("kitty -e cava")
		theme.volume.update()
	end),
	awful.button({}, 3, function() -- right click
		os.execute(
			string.format("%s set %s toggle", theme.volume.cmd, theme.volume.togglechannel or theme.volume.channel)
		)
		if theme.a_status == "on" then
			theme.a_status = "off"
		else
			theme.a_status = "on"
		end
		theme.volume.update()
	end),
	awful.button({}, 4, function() -- scroll up
		os.execute(string.format("%s set %s 1%%+", theme.volume.cmd, theme.volume.channel))
		theme.volume.update()
	end),
	awful.button({}, 5, function() -- scroll down
		os.execute(string.format("%s set %s 1%%-", theme.volume.cmd, theme.volume.channel))
		theme.volume.update()
	end)
))

-- CPU widget
local cpu_bars = lain.widget.cpu({
	settings = function()
		local cpu_icon = markup(gray, " ")
		local cpu = {}
		for i = 1, #cpu_now do
			cpu[i] = cpu_now[i].usage
			if cpu_now[i].usage <= (1 / 8) * 100 then
				cpu[i] = markup(everforest.bg_5, "▁")
			elseif cpu_now[i].usage <= (2 / 8) * 100 then
				cpu[i] = markup(everforest.gray_0, "▂")
			elseif cpu_now[i].usage <= (3 / 8) * 100 then
				cpu[i] = markup(everforest.gray_1, "▃")
			elseif cpu_now[i].usage <= (4 / 8) * 100 then
				cpu[i] = markup(everforest.gray_2, "▄")
			elseif cpu_now[i].usage <= (5 / 8) * 100 then
				cpu[i] = markup(everforest.fg, "▅")
			elseif cpu_now[i].usage <= (6 / 8) * 100 then
				cpu[i] = markup(everforest.yellow, "▆")
			elseif cpu_now[i].usage <= (7 / 8) * 100 then
				cpu[i] = markup(everforest.orange, "▇")
			else
				cpu[i] = markup(everforest.red, "█")
			end
		end
		widget:set_markup(markup.font(theme.font, cpu_icon .. table.concat(cpu, "")))
	end,
})

-- Network widget

-- Separators
local first = wibox.widget.textbox(
	string.format('<span font="JetBrainsMono Nerd Font 13" color="%s">    </span>', everforest.bg_5)
)
local slash = wibox.widget.textbox(string.format('<span font="%s" color="%s"> / </span>', theme.font, everforest.bg_4))

local barheight = dpi(26)
local barcolor = everforest.bg_0

theme.titlebar_bg = everforest.bg_0
theme.titlebar_fg = everforest.gray_1
theme.titlebar_bg_focus = everforest.bg_2
theme.titlebar_fg_focus = everforest.green

function theme.at_screen_connect(s)
	-- If wallpaper is a function, call it with the screen
	local wallpaper = theme.wallpaper
	if type(wallpaper) == "function" then
		wallpaper = wallpaper(s)
	end
	gears.wallpaper.maximized(wallpaper, s, true)

	-- Tags
	awful.tag(awful.util.tagnames, s, awful.layout.layouts[1])

	-- Create a promptbox for each screen
	s.mypromptbox = awful.widget.prompt()

	-- Create an imagebox widget which will contains an icon indicating which layout we're using.
	-- We need one layoutbox per screen.
	s.mylayoutbox = awful.widget.layoutbox(s)
	s.mylayoutbox:buttons(my_table.join(
		awful.button({}, 1, function()
			awful.layout.inc(1)
		end),
		awful.button({}, 2, function()
			awful.layout.set(awful.layout.layouts[1])
		end),
		awful.button({}, 3, function()
			awful.layout.inc(-1)
		end),
		awful.button({}, 4, function()
			awful.layout.inc(1)
		end),
		awful.button({}, 5, function()
			awful.layout.inc(-1)
		end)
	))

	-- Create a taglist widget
	s.mytaglist = awful.widget.taglist({
		screen = s,
		filter = awful.widget.taglist.filter.all,
		buttons = awful.util.taglist_buttons,
		style = {
			shape = gears.shape.powerline,
			spacing = -10,
			fg_empty = everforest.gray_0,
			bg_empty = everforest.bg_1,
			fg_focus = everforest.green,
			bg_focus = everforest.bg_5,
			fg_urgent = everforest.orange,
			bg_urgent = everforest.bg_v,
			fg_occupied = everforest.gray_2,
			bg_occupied = everforest.bg_3,
		},
	})

	-- Create a tasklist widget
	s.mytasklist = awful.widget.tasklist({
		screen = s,
		filter = awful.widget.tasklist.filter.currenttags,
		buttons = awful.util.tasklist_buttons,
		style = {
			bg_normal = everforest.bg_1,
			fg_normal = everforest.gray_2,
			bg_focus = everforest.bg_2,
			fg_focus = everforest.green,
			bg_urgent = everforest.bg_v,
			fg_urgent = everforest.orange,
			bg_minimize = everforest.bg_dim,
			fg_minimize = everforest.gray_0,
			shape = gears.shape.rounded_bar,
			shape_border_width = dpi(2),
			shape_border_color = everforest.bg_0,
		},
		widget_template = {
			{
				{
					{
						{
							id = "icon_role",
							widget = wibox.widget.imagebox,
						},
						right = 10,
						left = 3,
						top = 5,
						bottom = 5,
						widget = wibox.container.margin,
					},
					{
						id = "text_role",
						widget = wibox.widget.textbox,
					},
					layout = wibox.layout.fixed.horizontal,
				},
				left = 2,
				right = 5,
				widget = wibox.container.margin,
			},
			id = "background_role",
			widget = wibox.container.background,
		},
	})

	-- Create the wibox
	s.mywibox = awful.wibar({ position = "top", screen = s, height = barheight, bg = barcolor })

	-- Add widgets to the wibox
	s.mywibox:setup({
		layout = wibox.layout.align.horizontal,
		{ -- Left widgets
			layout = wibox.layout.fixed.horizontal,
			s.mylayoutbox,
			s.mytaglist,
			s.mypromptbox,
			first,
		},
		s.mytasklist,
		{ -- Right widgets
			first,
			layout = wibox.layout.fixed.horizontal,
			--wibox.widget.systray(),
			--theme.mpd.widget,
			--theme.mail.widget,
			--theme.weather.icon,
			--theme.weather.widget,
			--theme.fs.widget,
			theme.volume,
			slash,
			bat,
			slash,
			cpu_bars,
			slash,
			mytextclock,
			first,
		},
	})
end

return theme
