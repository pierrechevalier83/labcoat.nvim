return function(opts)
    local c = opts.c
    -- 'airblade/vim-gitgutter'
    return {
        {'GitGutterAdd', c.nord14, c.nord1},
        {'GitGutterChange', c.nord13, c.nord1},
        {'GitGutterDelete', c.nord11, c.nord1}
    }
end
