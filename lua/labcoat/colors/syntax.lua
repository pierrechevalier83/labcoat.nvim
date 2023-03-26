-- New tree-sitter syntax highlighting uses @ queries directly.
-- See: https://github.com/nvim-treesitter/nvim-treesitter/issues/2293#issuecomment-1279974776
-- Remove old TS* highlight groups when Neovim 0.9 is released?
--
return function(c, s, cs)
    local attributes = {
        -- TS
        'TSAnnotation',
        'TSAttribute',
        -- TS Query
        '@annotation',
        '@attribute',
        -- lua
        'luametatableevents',
        'luametatablearithmetic',
        'luametatableequivalence',
    }
    local numbers = {
        -- TS
        'TSBoolean',
        'TSFloat',
        'TSNumber',
        -- TS Query
        '@boolean',
        '@float',
        '@number',
        -- VL
        'Boolean',
        'Float',
        'Number',
    }
    local comments = {
        'TSComment', -- TS
        '@comment', -- TS Query
        'Comment', -- VL
        'manFooter', -- man
        -- rust
        'rustCommentLine',
        'rustCommentBlock',
        -- vim
        'vimCommentTitle',
        'vimCommentLine',
    }
    local constructors = {
        'TSConstructor', -- TS
        '@constructor', -- TS Query
    }
    local conditionals = {
        'TSConditional', -- TS
        '@conditional', -- TS Query
        -- VL
        'Conditional',
        'PreCondit',
        -- C/C++
        'cPreCondit',
        'cPreConditMatch',
    }
    local constants = {
        'TSConstant', -- TS
        '@constant', -- TS Query
        'Constant', -- VL
        -- C/C++
        'cConstant',
        'cppConstant',
    }
    local defines = {
        'TSConstMacro', -- TS
        '@constant.macro', -- TS Query
        'Define',
        'Macro', -- VL
    }
    local exceptions = {
        'TSException', -- TS
        '@exception', -- TS Query
        'Exception', -- VL
    }
    local fields = {
        -- TS
        'TSField',
        'TSProperty',
        'TSTag',
        -- TS Query
        '@field',
        '@property',
        '@tag',
        'Tag', -- VL
    }
    local functions = {
        -- TS
        'TSFunction',
        'TSFuncMacro',
        'TSMethod',
        -- TS Query
        '@function',
        '@function.macro',
        '@method',
        'Function', -- VL
        'pythonfunction', -- python
        'vimFunction',
        'vimUserFunc', -- vim
    }
    local includes = {
        'TSInclude', -- TS
        '@include', -- TS Query
        'Include',
        'PreProc', -- VL
        'cInclude', -- C/C++
        'pythonimport', -- python
        'rustExternCrate', -- rust
    }
    local keywords = {
        -- TS
        'TSKeyword',
        'TSKeywordFunction',
        -- TS Query
        '@keyword',
        '@keyword.function',
        -- VL
        'Keyword',
        'Statement',
        -- C/C++
        'cStatement',
        'cppStatement',
        'cppModifier',
        'cppAccess',
        -- python
        'pythonstatement',
        'pythonkeyword',
        'rustDeriveTrait', -- rust
        -- lua
        'luastatement',
        'luakeyword',
        'luamykeyword',
        'luafunctioncall',
        'luaspecialfunction',
        -- vim
        'vimCommand',
        'vimnotfunc',
    }
    local labels = {
        'TSLabel', -- TS
        '@label', -- TS Query
        'Label', -- VL
    }
    local namespaces = {
        'TSNamespace', -- TS
        '@namespace', -- TS Query
        'pythonModule', -- python
    }
    local nones = {
        'TSNone', -- TS
        '@none', -- TS Query
        'pythonnone', -- python
    }
    local operators = {
        'TSOperator', -- TS
        '@operator', -- TS Query
        'Operator', -- VL
        -- C/C++
        'cOperator',
        'cppOperator',
        'pythonoperator', -- python
    }
    local parameters = {
        -- TS
        'TSParameter',
        'TSParameterReference',
        -- TS Query
        '@parameter',
        '@parameter.reference',
        'pythonparam', -- python
    }
    local properties = {
        'TSProperty', -- TS
        '@property', -- TS Query
    }
    local punctuations = {
        -- TS
        'TSPunctDelimiter',
        'TSPunctBracket',
        'TSPunctSpecial',
        'TSTagDelimiter',
        -- TS Query
        '@punctuation.delimiter',
        '@punctuation.bracket',
        '@punctuation.special',
        '@tag.delimiter',
        -- VL
        'Delimiter',
        -- vim
        'vimparensep',
        'vimsep',
        'vimbracket',
        -- sh
        'shCmdParenRegion',
        'shCmdSubRegion',
    }
    local repeats = {
        'TSRepeat', -- TS
        '@repeat', -- TS Query
        'Repeat', -- VL
    }
    local strings = {
        -- TS
        'TSCharacter',
        'TSString',
        -- TS Query
        '@character',
        '@string',
        -- VL
        'Character',
        'String',
        -- C/C++
        'cString',
        'cCppString',
        -- python
        'pythonstringdelimiter',
        'pythonbytes',
        'pythonrawbytes',
        'pythonbytescontent',
    }
    local strings_specials = {
        -- TS
        'TSStringRegex',
        'TSStringEscape',
        -- TS Query
        '@character.special',
        '@string.regex',
        '@string.escape',
        '@string.special',
        'SpecialChar', -- VL
        'cSpecialCharacter', -- C/C++
        'pythonescape', -- python
    }
    local symbols = {
        'TSSymbol', -- TS
        '@symbol', -- TS Query
        -- VL
        'Special',
        'SpecialComment',
        'cSpecial', -- C/C++
        'pythonsymbol', -- python
        -- rust
        'rustCommentLineDoc',
        'rustCommentBlockDoc',
    }
    local texts = {
        'TSText', -- TS
        '@text', -- TS Query
        'Text', -- VL
        'manTitle', -- man
    }
    local uris = {
        'TSURI', -- TS
        '@text.uri', -- TS Query
    }
    local types = {
        -- TS
        'TSType',
        'TSTypeBuiltin',
        -- TS Query
        '@type',
        '@type.builtin',
        '@type.definition',
        '@type.qualifier',
        -- VL
        'Type',
        'StorageClass',
        'Structure',
        'Typedef',
        -- C/C++
        'cType',
        'cStorageClass',
        'cStructure',
        'cppType',
        'cppStorageClass',
        'cppStructure',
        -- python
        'pythonclass',
        'vimlet', -- vim
    }
    local variables = {
        'TSVariable', -- TS
        '@variable', -- TS Query
        'Identifier', -- VL
        'pythonselfarg', -- python
        'rustIdentifier', -- rust
        -- vim
        'vimmapmodkey',
        'vimnotation',
        'vimfuncvar',
        'vimvar',
        -- sh
        'shDerefSimple',
        'shDerefVar',
    }
    local builtins = { -- such as self. in python
        -- TS
        'TSConstBuiltin',
        'TSFuncBuiltin',
        'TSVariableBuiltin',
        -- TS Query
        '@constant.builtin',
        '@function.builtin',
        '@variable.builtin',
        -- python
        'pythonbuiltin',
        'pythonself',
        'vimmap', -- vim
    }
    local notes = {
        'TSNote', -- TS
        -- TS Query
        '@text.note',
        '@text.todo',
        'Todo', -- VL
        'cTODO', -- C/C++
    }
    local warnings = {
        'TSWarning', -- TS
        '@text.warning', -- TS Query
        'Debug', -- VL
    }
    local dangers = {
        'TSDanger', -- TS
        '@text.danger', -- TS Query
    }
    local errors = {
        'TSError', -- TS
        '@error', -- TS Query
        'Error', -- VL
        -- rust
        'rustCommentLineDocError',
        'rustCommentBlockDocError',
    }

    return {
        { attributes, c.secondary_accent },
        { numbers, c.violet },
        { comments, c.secondary_fg, c.none, cs.comments },
        { constructors, c.primary_fg, c.none, cs.italic }, -- in C++ variable->constructors() \\ TS docs unclear
        { conditionals, c.bright_secondary_accent, c.none, cs.italic },
        { constants, c.primary_fg },
        { defines, c.bright_secondary_accent },
        { exceptions, c.secondary_accent },
        { fields, c.secondary_accent, c.none },
        { functions, c.primary_fg, c.none, cs.italic },
        { includes, c.bright_secondary_accent },
        { keywords, c.secondary_accent, c.none, s.none },
        { labels, c.bright_secondary_accent, c.none, cs.italic },
        { namespaces, c.primary_fg, c.none, cs.italic },
        { nones, c.primary_fg },
        { operators, c.secondary_accent },
        { parameters, c.primary_fg, c.none, cs.italic },
        { properties, c.secondary_accent },
        { punctuations, c.secondary_accent },
        { repeats, c.secondary_accent, c.none, cs.italic },
        { strings, c.green },
        { strings_specials, c.yellow },
        { symbols, c.yellow },
        { texts, c.primary_fg },
        { uris, c.violet },
        { types, c.primary_accent },
        { variables, c.primary_fg },
        { builtins, c.secondary_accent, c.none, cs.italic },
        { notes, c.orange },
        { warnings, c.yellow },
        { dangers, c.yellow },
        { errors, c.red },

        -- Old TS Highlight Groups
        { 'TSTitle', c.bright_primary_accent },
        { 'TSStrong', c.primary_fg, c.none, s.bold },
        { { 'TSEmphasis', 'TSTextReference' }, c.primary_fg, c.none, s.italic },
        { 'TSUnderline', c.primary_fg, c.none, s.underline },
        { 'TSStrike', c.primary_fg, c.none, s.strikethrough },
        { 'TSLiteral', c.primary_accent },
        { 'TSStringEscape', c.secondary_fg },

        -- New TS Queries
        { '@text.title', c.bright_primary_accent },
        { '@text.strong', c.primary_fg, c.none, s.bold },
        { { '@text.emphasis', '@text.reference' }, c.primary_fg, c.none, s.italic },
        { '@text.underline', c.primary_fg, c.none, s.underline },
        { '@text.strike', c.primary_fg, c.none, s.strikethrough },
        { '@text.literal', c.primary_accent },
        { '@string.escape', c.secondary_fg },
    }
end
