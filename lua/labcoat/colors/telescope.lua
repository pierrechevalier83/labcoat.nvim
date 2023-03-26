-- 'nvim-telescope/telescope.nvim'
return function(c, s)
    return {
        { 'TelescopeBorder', c.secondary_fg, c.secondary_bg },
        { 'TelescopeNormal', c.primary_fg, c.primary_bg },
        { 'TelescopePreviewNormal', c.primary_fg, c.primary_bg },
        { 'TelescopePromptPrefix', c.primary_fg },
        { 'TelescopeSelection', c.bright_primary_accent, c.secondary_fg, s.bold },
        { 'TelescopeMatching', c.bright_primary_accent, c.secondary_fg },
    }
end
