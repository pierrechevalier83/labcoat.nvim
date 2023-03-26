-- 'sindrets/winshift.nvim'
return function(c, s)
    return {
        { { 'WinShiftNormal', 'WinShiftEndOfBuffer' }, c.none, c.primary_bg },
        { 'WinShiftLineNr', c.yellow, c.primary_bg },
        { 'WinShiftCursorLineNr', c.yellow, c.primary_bg, s.bold },
        { 'WinShiftSignColumn', c.primary_accent, c.primary_bg },
        { 'WinShiftWindowPicker', c.violet, c.secondary_accent, s.bold },
        { 'WinShiftFoldColumn', c.primary_accent, c.primary_bg },
    }
end
