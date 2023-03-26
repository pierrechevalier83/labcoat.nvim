-- lukas-reineke/indent-blankline.nvim
return function(c)
    return {
        { 'IndentBlanklineChar', c.secondary_fg },
        { 'IndentBlanklineSpaceChar', c.secondary_fg },
        { 'IndentBlanklineSpaceCharBlankline', c.primary_fg },
        { 'IndentBlanklineContextChar', c.black },
    }
end
