-- 'lewis6991/gitsigns.nvim'
return function(c)
    return {
        { 'GitSignsAdd', c.green, c.primary_bg },
        { 'GitSignsChange', c.yellow, c.primary_bg },
        { 'GitSignsDelete', c.red, c.primary_bg },
        { 'GitSignsDeleteLn', c.red, c.emphasized_bg },
    }
end
