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
    local cyan = options.cyan or '#569c96'
    -- Bright accent colors
    local bright_blue = options.bright_blue or '#19b5ff'
    local bright_violet = options.bright_violet or '#8399f2'
    local bright_magenta = options.bright_magenta or '#ff61ab'
    local bright_red = options.bright_red or '#ff5a4b'
    local bright_orange = options.bright_orange or '#ff6f32'
    local bright_yellow = options.bright_yellow or '#eaaf31'
    local bright_green = options.bright_green or '#b7c032'
    local bright_cyan = options.bright_cyan or '#47ccc1'
    -- locals
    local primary_bg
    local primary_fg
    local emphasized_bg
    local emphasized_fg
    local secondary_bg
    local secondary_fg
    local black
    local bright_black
    local white
    local bright_white
    -- accents
    local primary_accent
    local primary_bright_accent
    local secondary_accent
    local secondary_bright_accent
    -- Base configuration
    if options.dark_theme == true or options.dark_theme == nil then
        if options.high_contrast == true or options.high_contrast == nil then
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
    if options.primary_accent == 'blue' then
        primary_accent = blue
        primary_bright_accent = bright_blue
    elseif options.primary_accent == 'violet' then
        primary_accent = violet
        primary_bright_accent = bright_violet
    elseif options.primary_accent == 'magenta' then
        primary_accent = magenta
        primary_bright_accent = bright_magenta
    elseif options.primary_accent == 'red' then
        primary_accent = red
        primary_bright_accent = bright_red
    elseif options.primary_accent == 'orange' then
        primary_accent = orange
        primary_bright_accent = bright_orange
    elseif options.primary_accent == 'yellow' then
        primary_accent = yellow
        primary_bright_accent = bright_yellow
    elseif options.primary_accent == 'green' then
        primary_accent = green
        primary_bright_accent = bright_green
    elseif options.primary_accent == 'cyan' then
        primary_accent = cyan
        primary_bright_accent = bright_cyan
    else
        primary_accent = cyan
        primary_bright_accent = bright_cyan
    end
    -- TODO
    secondary_accent = blue
    secondary_bright_accent = bright_blue
    return {
        -- colors
        blue = blue,
        violet = violet,
        magenta = magenta,
        red = red,
        orange = orange,
        yellow = yellow,
        green = green,
        cyan = cyan,
        black = black,
        white = white,
        -- bright colors
        bright_blue = bright_blue,
        bright_violet = bright_violet,
        bright_magenta = bright_magenta,
        bright_red = bright_red,
        bright_orange = bright_orange,
        bright_yellow = bright_yellow,
        bright_green = bright_green,
        bright_cyan = bright_cyan,
        bright_black = bright_black,
        bright_white = bright_white,
        -- bases
        primary_bg = primary_bg,
        primary_fg = primary_fg,
        emphasized_bg = emphasized_bg,
        emphasized_fg = emphasized_fg,
        secondary_bg = secondary_bg,
        secondary_fg = secondary_fg,
        primary_accent = primary_accent,
        primary_bright_accent = primary_bright_accent,
        secondary_accent = secondary_accent,
        secondary_bright_accent = secondary_bright_accent,
    }
end
