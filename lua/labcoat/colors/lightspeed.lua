-- 'ggandor/lightspeed.nvim'
return function(c, s)
    return {
        { 'LightspeedLabel', c.yellow, c.none },
        { 'LightspeedLabelOverlapped', c.yellow, c.black, s.reverse },
        { 'LightspeedLabelDistant', c.violet, c.emphasized_bg, s.bold },
        { 'LightspeedLabelDistantOverlapped', c.violet, c.emphasized_bg, s.reverse },
        { 'LightspeedShortcut', c.orange, c.none, s.bold },
        { 'LightspeedShortcutOverlapped', c.orange, c.black, s.reverse },
        { 'LightspeedMaskedChar', c.primary_fg, c.emphasized_bg, s.bold },
        { 'LightspeedGreyWash', c.secondary_fg },
        { 'LightspeedUnlabeledMatch', c.emphasized_fg, c.emphasized_bg },
        { 'LightspeedOneCharMatch', c.primary_accent, c.none, s.reverse },
    }
end
