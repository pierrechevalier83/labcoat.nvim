-- 'folke/whick-key-nvim'
return function(c, s)
    return {
        { 'WhichKey', c.bright_primary_accent },
        { 'WhichKeyGroup', c.secondary_accent },
        { 'WhichKeySeparator', c.secondary_fg },
        { 'WhichKeyDesc', c.primary_fg },
        { 'WhichKeyFloat', c.none, c.primary_bg },
        { 'WhichKeyValue', c.primary_fg },
    }
end
