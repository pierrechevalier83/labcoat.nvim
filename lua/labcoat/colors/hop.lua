-- 'phaazon/hop.nvim'
return function(c)
    return {
        { 'HopNextKey', c.primary_accent },
        { 'HopNextKey1', c.bright_primary_accent },
        { 'HopNextKey2', c.secondary_accent },
        { 'HopUnmatched', c.secondary_fg },
    }
end
