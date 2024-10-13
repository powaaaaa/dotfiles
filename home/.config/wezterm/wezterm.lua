local wezterm = require("wezterm")
local config = wezterm.config_builder()

--------------------------------
-- UI
--------------------------------

-- 設定を自動再読み込み
config.automatically_reload_config = true

-- font
-- config.font = wezterm.font("JetBrains Mono", { weight = "bold" })

-- font size
config.font_size = 12.0

-- IME日本語入力
config.use_ime = true

-- 背景透過
config.window_background_opacity = 0.84

-- 背景ぼかし
config.macos_window_background_blur = 5

-- カラースキーマの設定
config.color_scheme = "Rosé Pine Moon (Gogh)"

-- window初期サイズ
config.initial_cols = 268
config.initial_rows = 71

--------------------------------
-- tab
--------------------------------

-- title barを非表示
config.window_decorations = "RESIZE"

-- tab barを透過
config.window_frame = {
	inactive_titlebar_bg = "none",
	active_titlebar_bg = "none",
}

-- tab barと背景を同色にする
config.window_background_gradient = {
	-- color schemeと同じ色にすること!
	colors = { "#232135" },
}

-- tabの+, ×ボタンを非表示
config.show_new_tab_button_in_tab_bar = false
config.show_close_tab_button_in_tabs = false

config.colors = {
	tab_bar = {
		-- tab同士の境界線を非表示
		inactive_tab_edge = "none",
	},
}

-- tabタイトルの設定
local function tab_title(tab_info)
	local title = tab_info.tab_title
	-- if the tab title is explicitly set, take that
	if title and #title > 0 then
		return title
	end
	-- Otherwise, use the title from the active pane
	-- in that tab
	return tab_info.active_pane.title
end

-- タブの左側の装飾
-- local TAB_RIGHT_DECORATION = wezterm.nerdfont.ple_lower_right_triangle

-- activeなtabの色を変える
wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local background = "#2D323B"
	local foreground = "#FAFAF9"

	local edge_background = "none"

	if tab.is_active then
		background = "#BEA7E1"
		foreground = "#2D323B"
	end
	local edge_foreground = background

	local title = tab_title(tab)

	return {
		{ Background = { Color = edge_background } },
		{ Foreground = { Color = edge_foreground } },
		{ Text = "" },
		{ Background = { Color = background } },
		{ Foreground = { Color = foreground } },
		{ Text = title },
		{ Background = { Color = edge_background } },
		{ Foreground = { Color = edge_foreground } },
		{ Text = "" },
	}
end)

--------------------------------
-- keybind読み込み
--------------------------------

-- defaultのkeybindを無効
config.disable_default_key_bindings = true

config.keys = require("keybinds").keys
config.key_tables = require("keybinds").key_tables

-- leaderキーの設定
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 2000 }

return config
