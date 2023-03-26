return function(options)
    return {
	    -- Base colors
	    base03 = options.base03 or "#002a35"
	    base02 = options.base02 or "#083540"
	    base01 = options.base01 or "#49707c"
	    base00 = options.base00 or "#567d89"
	    base0  = options.base0  or "#8b8372"
	    base1  = options.base1  or "#98907f"
	    base2  = options.base2  or "#f0e7d5"
	    base3  = options.base3  or "#fff6e3"
	    -- Accent colors
	    blue = options.blue or "#4a89b8"
	    violet = options.violet or "#6a74a9"
	    magenta = options.magenta or "#b7577f"
	    red = options.red or "#c35446"
	    orange = options.orange or "#b85e39"
	    yellow = options.yellow or "#b18a44"
	    green = options.green or "#929546"
	    cyan = options.cyan or "569c96"
	    -- Bright accent colors
	    bright_blue = options.bright_blue or "#19b5ff"
	    bright_violet = options.bright_violet or "#8399f2"
	    bright_magenta = options.bright_magenta or "#ff61ab"
	    bright_red = options.bright_red or "#ff5a4b"
	    bright_orange = options.bright_orange or "#ff6f32"
	    bright_yellow = options.bright_yellow or "#eaaf31"
	    bright_green = options.bright_green or "#b7c032"
	    bright_cyan = options.bright_cyan or "#47ccc1"
	    -- Base configuration
	    if (options.dark_theme == true or options.dark_theme == nil) then
		if (options.high_contrast == true or options.high_contrast == nil) then
		    -- High contrast, Dark theme
		    primary_bg = base03
		    primary_fg = base0
		    emphasized_bg = base02
		    emphasized_fg = base1
		else
		    -- Low contrast, Dark theme
		    primary_bg = base02
		    primary_fg = base1
		    emphasized_bg = base03
		    emphasized_fg = base0
		end
		secondary_bg = base00
		secondary_fg = base01
		black = base00
		bright_black = base01
		white = base2
		bright_white = base3
	    else
		if options.high_contrast == true then
		    -- High contrast, Light theme
		    primary_bg = base3
		    primary_fg = base00
		    emphasized_bg = base2
		    emphasized_fg = base01
		else
		    -- Low contrast, Light theme
		    primary_bg = base2
		    primary_fg = base01
		    emphasized_bg = base3
		    emphasized_fg = base00
		end
		secondary_bg = base0
		secondary_fg = base1
		black = base02
		bright_black = base03
		white = base0
		bright_white = base1
	    end
	    -- Accent configuration
	    primary_accent = options.primary_accent or cyan
	    primary_bright_accent = options.primary_bright_accent or bright_cyan
	    secondary_accent = options.secondary_accent or blue
	    secondary_bright_accent = options.secondary_bright_accent or bright_blue
    }
end
