-- 'wbthomason/packer.nvim'
return function(c)
    return {
        { 'packerHash', c.secondary_fg, c.none },
        { 'packerStatusSuccess', c.green, c.none },
    }
end
