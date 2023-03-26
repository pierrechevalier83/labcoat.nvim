return function(c, s)
    return {
        {
            {
                'markdownH1Delimiter',
                'markdownH2Delimiter',
                'markdownH3Delimiter',
                'markdownH4Delimiter',
                'markdownH5Delimiter',
                'markdownH6Delimiter',
            },
            c.bright_primary_accent,
            c.none,
        },
        {
            {
                'markdownH1',
                'markdownH2',
                'markdownH3',
                'markdownH4',
                'markdownH5',
                'markdownH6',
            },
            c.bright_primary_accent,
            c.none,
            s.bold,
        },
        { 'markdownCode', c.primary_accent },
        { 'markdownCodeDelimiter', c.primary_accent },
        { 'markdownBlockquote', c.primary_accent },
        { 'markdownFootnote', c.primary_accent },
        { 'markdownFootnoteDefinition', c.primary_accent },
        { 'markdownId', c.primary_accent },
        { 'markdownIdDeclaration', c.primary_accent },
        { 'markdownIdDelimiter', c.secondary_accent },
        { 'markdownUrl', c.primary_fg },
        { 'markdownLinkText', c.bright_primary_accent },
        { 'markdownLinkTextDelimiter', c.secondary_accent },
        { 'markdownLinkDelimiter', c.secondary_accent },
    }
end
