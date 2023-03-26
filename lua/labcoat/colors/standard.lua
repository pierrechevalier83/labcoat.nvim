return function(c, s, cs, opts)
    return {
        --- Editor---
        { 'ColorColumn', c.none, c.black },
        { 'Cursor', c.primary_bg, c.primary_fg },
        { 'Error', c.primary_fg, c.red },
        { 'iCursor', c.primary_bg, c.primary_fg },
        { 'LineNr', c.secondary_fg },
        { 'MatchParen', c.bright_primary_accent, c.secondary_fg },
        { 'NonText', c.emphasized_bg },
        { 'Normal', c.primary_fg, c.primary_bg },
        { 'NormalAlt', c.primary_fg, c.primary_bg },
        { 'PMenu', c.primary_fg, c.emphasized_bg },
        { 'PmenuSbar', c.primary_fg, c.emphasized_bg },
        { 'PMenuSel', c.bright_primary_accent, c.secondary_fg, s.bold },
        { 'PmenuThumb', c.bright_primary_accent, c.secondary_fg },
        { 'SpecialKey', c.secondary_fg },
        { 'SpellBad', c.red, c.none, cs.underline },
        { 'SpellCap', c.yellow, c.none, cs.underline },
        { 'SpellLocal', c.white, c.none, cs.underline },
        { 'SpellRare', c.emphasized_fg, c.none, cs.underline },
        { 'Visual', c.none, c.emphasized_bg },
        { 'VisualNOS', c.none, c.emphasized_bg },
        { 'VertSplit', c.black },
        { 'VisualNC', c.none, c.emphasized_bg },
        { 'NormalNC', c.primary_fg, c.none },
        { 'RedrawDebugNormal', c.primary_bg, c.primary_fg },
        { 'RedrawDebugClear', c.primary_fg, c.yellow },
        { 'RedrawDebugComposed', c.primary_fg, c.green },
        { 'RedrawDebugRecompose', c.primary_fg, c.red },
        --- Neovim ---
        { 'healthError', c.red, c.black },
        { 'healthSuccess', c.green, c.black },
        { 'healthWarning', c.yellow, c.black },
        { 'TermCursorNC', c.none, c.black },
        { 'NvimInternalError', c.red, c.red },
        --- Gutter ---
        { 'CursorColumn', c.none, c.black },
        { 'CursorLineNr', c.primary_fg, c.black },
        { 'Folded', c.secondary_fg, c.primary_bg },
        { 'FoldColumn', c.secondary_fg, c.primary_bg },
        { 'SignColumn', c.black, c.primary_bg },
        { 'SignColumnAlt', c.black, c.primary_bg },
        -- Navigation ---
        { 'Directory', c.bright_primary_accent },
        --- Prompt/Status ---
        { 'EndOfBuffer', c.black },
        { 'ErrorMsg', c.primary_fg, c.red },
        { 'ModeMsg', c.primary_fg },
        { 'MoreMsg', c.bright_primary_accent },
        { 'Question', c.primary_fg },
        { 'WarningMsg', c.primary_bg, c.yellow },
        { 'WildMenu', c.bright_primary_accent, c.black },
        --- Search ---
        { 'IncSearch', c.emphasized_fg, c.bright_secondary_accent, s.underline },
        { 'Search', c.black, c.bright_primary_accent },
        --- Window ---
        { 'Title', c.primary_fg, c.none, s.bold },
        --- Others ---
        { 'qffilename', c.yellow, c.none, s.none },
        { 'Whitespace', c.emphasized_bg }, -- listchars nbsp, space, tab, trail

        function()
            if opts.minimal_mode then
                return {
                    --- Editor---
                    { 'CursorLine', c.none, c.primary_bg },
                    { 'NormalFloat', c.white, c.none },
                    { 'FloatBorder', c.secondary_fg, c.primary_bg },
                    { 'FloatTitle', c.secondary_fg, c.primary_bg },
                    --- Prompt/Status ---
                    { 'StatusLine', c.primary_fg, c.primary_bg },
                    { 'StatusLineNC', c.secondary_fg, c.primary_bg },
                    { 'StatusLineTerm', c.primary_fg, c.primary_bg },
                    { 'StatusLineTermNC', c.secondary_fg, c.primary_bg },
                    --- Tabs ---
                    { 'TabLine', c.secondary_fg, c.primary_bg },
                    { 'TabLineFill', c.secondary_fg, c.primary_bg },
                    { 'TabLineSel', c.emphasized_fg, c.primary_bg },
                }
            end

            return {
                --- Editor---
                { 'NormalFloat', c.white, c.black },
                { 'CursorLine', c.none, c.black },
                { 'FloatBorder', c.black, c.primary_bg },
                { 'FloatTitle', c.secondary_fg, c.primary_bg },
                --- Prompt/Status ---
                { 'StatusLine', c.bright_primary_accent, c.secondary_fg },
                { 'StatusLineNC', c.primary_fg, c.black },
                { 'StatusLineTerm', c.bright_primary_accent, c.secondary_fg },
                { 'StatusLineTermNC', c.primary_fg, c.black },
                --- Tabs ---
                { 'TabLine', c.primary_fg, c.black },
                { 'TabLineFill', c.primary_fg, c.black },
                { 'TabLineSel', c.bright_primary_accent, c.secondary_fg },
            }
        end,
    }
end
