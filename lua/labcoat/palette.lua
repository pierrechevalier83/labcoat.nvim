return function(options)
    -- Base colors
    local base03 = options.base03 or '#002a35'
    local base02 = options.base02 or '#083540'
    local base01 = options.base01 or '#49707c'
    local base00 = options.base00 or '#567d89'
    local base0 = options.base0 or '#8b8372'
    local base1 = options.base1 or '#98907f'
    local base2 = options.base2 or '#f0e7d5'
    local base3 = options.base3 or '#fff6e3'
    -- Accent colors
    local blue = options.blue or '#4a89b8'
    local violet = options.violet or '#6a74a9'
    local magenta = options.magenta or '#b7577f'
    local red = options.red or '#c35446'
    local orange = options.orange or '#b85e39'
    local yellow = options.yellow or '#b18a44'
    local green = options.green or '#929546'
    local cyan = options.cyan or '569c96'
    -- Bright accent colors
    local bright_blue = options.bright_blue or '#19b5ff'
    local bright_violet = options.bright_violet or '#8399f2'
    local bright_magenta = options.bright_magenta or '#ff61ab'
    local bright_red = options.bright_red or '#ff5a4b'
    local bright_orange = options.bright_orange or '#ff6f32'
    local bright_yellow = options.bright_yellow or '#eaaf31'
    local bright_green = options.bright_green or '#b7c032'
    local bright_cyan = options.bright_cyan or '#47ccc1'
    -- Base configuration
    if options.dark_theme == true or options.dark_theme == nil then
        if options.high_contrast == true or options.high_contrast == nil then
            -- High contrast, Dark theme
            local primary_bg = base03
            local primary_fg = base0
            local emphasized_bg = base02
            local emphasized_fg = base1
        else
            -- Low contrast, Dark theme
            local primary_bg = base02
            local primary_fg = base1
            local emphasized_bg = base03
            local emphasized_fg = base0
        end
        local secondary_bg = base00
        local secondary_fg = base01
        local black = base00
        local bright_black = base01
        local white = base2
        local bright_white = base3
    else
        if options.high_contrast == true then
            -- High contrast, Light theme
            local primary_bg = base3
            local primary_fg = base00
            local emphasized_bg = base2
            local emphasized_fg = base01
        else
            -- Low contrast, Light theme
            local primary_bg = base2
            local primary_fg = base01
            local emphasized_bg = base3
            local emphasized_fg = base00
        end
        local secondary_bg = base0
        local secondary_fg = base1
        local black = base02
        local bright_black = base03
        local white = base0
        local bright_white = base1
    end
    -- Accent configuration
    local primary_accent = options.primary_accent or cyan
    local primary_bright_accent = options.primary_bright_accent or bright_cyan
    local secondary_accent = options.secondary_accent or blue
    local secondary_bright_accent = options.secondary_bright_accent or bright_blue
    return {
        -- colors
        blue,
        violet,
        magenta,
        red,
        orange,
        yellow,
        green,
        cyan,
        black,
        white,
        -- bright colors
        bright_blue,
        bright_violet,
        bright_magenta,
        bright_red,
        bright_orange,
        bright_yellow,
        bright_green,
        bright_cyan,
        bright_black,
        bright_white,
        -- bases
        primary_bg,
        primary_fg,
        emphasized_bg,
        emphasized_fg,
        secondary_bg,
        secondary_fg,
    }
end