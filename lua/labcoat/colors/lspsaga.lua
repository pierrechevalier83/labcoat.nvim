-- 'glepnir/lspsaga.nvim'
return function(c, s)
    return {
        { 'LspSagaDiagnosticBorder', c.orange },
        { 'LspSagaDiagnosticHeader', c.orange, c.none, s.bold },
        { 'LspSagaDiagnosticTruncateLine', c.orange },
        { 'LspDiagnosticsFloatingWarn', c.orange },
        { 'LspDiagnosticsFloatingInfor', c.bright_secondary_accent },
        { 'LspSagaShTruncateLine', c.black },
        { 'LspSagaDocTruncateLine', c.black },
        { 'LspSagaCodeActionTitle', c.orange, c.none, s.bold },
        { 'LspSagaCodeActionTruncateLine', c.black },
        { 'LspSagaCodeActionContent', c.green, c.none, s.bold },
        { 'LspSagaRenamePromptPrefix', c.green },
        { 'LspSagaRenameBorder', c.primary_accent },
        { 'LspSagaHoverBorder', c.secondary_accent },
        { 'LspSagaSignatureHelpBorder', c.green },
        { 'LspSagaLspFinderBorder', c.bright_secondary_accent },
        { 'LspSagaCodeActionBorder', c.bright_primary_accent },
        { 'LspSagaAutoPreview', c.orange },
        { 'LspSagaDefPreviewBorder', c.bright_primary_accent },
    }
end
