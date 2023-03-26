-- 'folke/noice.nvim'
return function(c, s)
    return {
        { 'NoiceLspProgressClient', c.green },
        { 'NoiceLspProgressTitle', c.white },
    }
end
