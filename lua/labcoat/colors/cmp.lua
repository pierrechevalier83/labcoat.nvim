-- 'hrsh7th/nvim-cmp'
return function(c)
    return {
        { 'CmpDocumentation', c.white, c.none },
        { 'CmpDocumentationBorder', c.secondary_fg, c.none },
        { 'CmpItemAbbr', c.primary_fg, c.none },
        { 'CmpItemAbbrMatch', c.bright_primary_accent, c.none },
        { 'CmpItemAbbrMatchFuzzy', c.bright_primary_accent, c.none },
        { 'CmpItemKind', c.secondary_fg, c.none },
        { 'CmpItemMenu', c.none, c.black },
        { 'CmpItemKindDefault', c.primary_fg, c.none },
        { 'CmpItemAbbrMatch', c.secondary_accent, c.none },
        { 'CmpItemAbbrMatchFuzzy', c.secondary_accent, c.none },
        { 'CmpItemKindFunction', c.violet, c.none },
        { 'CmpItemKindMethod', c.violet, c.none },
        { 'CmpItemKindVariable', c.primary_accent, c.none },
        { 'CmpItemKindKeyword', c.white, c.none },
    }
end
