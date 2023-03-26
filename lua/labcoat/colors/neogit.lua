-- 'TimUntersberger/neogit'
return function(c)
    return {
        { 'NeogitDiffAddHighlight', c.green, c.black },
        { 'NeogitDiffDeleteHighlight', c.red, c.black },
        { 'NeogitDiffContextHighlight', c.white, c.primary_bg },
        { 'NeogitHunkHeaderHighlight', c.secondary_fg, c.primary_bg },
        { 'NeogitHunkHeader', c.secondary_fg, c.primary_bg },
    }
end
