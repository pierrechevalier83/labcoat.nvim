return function(c, s)
    return {
        { 'LspReferenceText', c.none, c.secondary_fg },
        { 'LspReferenceRead', c.none, c.secondary_fg },
        { 'LspReferenceWrite', c.none, c.secondary_fg },
        { 'LspDiagnosticsDefaultHint', c.bright_secondary_accent },
        { 'LspDiagnosticsDefaultError', c.red },
        { 'LspDiagnosticsDefaultWarning', c.yellow },
        { 'LspDiagnosticsDefaultInformation', c.bright_primary_accent },

        { 'DiagnosticUnderlineError', c.none, c.none, s.underline, c.red },
        { 'DiagnosticUnderlineWarn', c.none, c.none, s.underline, c.yellow },
        { 'DiagnosticUnderlineInfo', c.none, c.none, s.underline, c.bright_primary_accent },
        { 'DiagnosticUnderlineHint', c.none, c.none, s.underline, c.bright_secondary_accent },

        -- Support for updated highlights - https://github.com/neovim/neovim/pull/15585
        { 'DiagnosticError', c.red },
        { 'DiagnosticHint', c.bright_secondary_accent },
        { 'DiagnosticInfo', c.bright_primary_accent },
        { 'DiagnosticWarn', c.yellow },
    }
end
