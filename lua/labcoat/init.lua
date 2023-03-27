local load_palette = require('labcoat.palette')
local load_colors = require('labcoat.colors')
local vim = vim
local M = {}

local default_opts = {
    underline_option = 'none',
    italic = true,
    italic_comments = false,
    minimal_mode = false,
    dark_theme = true,
    high_contrast = true,
    primary_accent = 'cyan',
    secondary_accent = 'blue',
    base03 = '#002a35',
    base02 = '#083540',
    base01 = '#49707c',
    base00 = '#567d89',
    base0 = '#8b8372',
    base1 = '#98907f',
    base2 = '#f0e7d5',
    base3 = '#fff6e3',
    blue = '#4a89b8',
    violet = '#6a74a9',
    magenta = '#b7577f',
    red = '#c35446',
    orange = '#b85e39',
    yellow = '#b18a44',
    green = '#929546',
    cyan = '#569c96',
    bright_blue = '#19b5ff',
    bright_violet = '#8399f2',
    bright_magenta = '#ff61ab',
    bright_red = '#ff5a4b',
    bright_orange = '#ff6f32',
    bright_yellow = '#eaaf31',
    bright_green = '#b7c032',
    bright_cyan = '#47ccc1',
}

local style_names = {
    'bold',
    'underline',
    'italic',
    'undercurl',
    'strikethrough',
    'reverse',
    'inverse',
    'standout',
    'nocombine',
    'underdash',
    'underdot',
    'underlineline',
}

local function create_options(config)
    local module_opts = {}
    local global_opts = {}

    for k in pairs(default_opts) do
        module_opts[k] = config[k]
        global_opts[k] = vim.g['labcoat_' .. k]
    end

    return vim.tbl_extend('force', default_opts, global_opts, module_opts)
end

local function create_arguments(palette, options)
    local s = {}
    for _, v in pairs(style_names) do
        s[v] = v
    end

    local cs = {
        underline = options.underline_option and s[options.underline_option] or s.none,
        italic = (options.italic == true or options.italic == nil) and s.italic or s.none,
        comments = options.italic_comments and s.italic or s.none,
    }

    return { palette, s, cs, options }
end

local function initialize(config)
    local options = create_options(config)
    local palette = load_palette(options)
    local arguments = create_arguments(palette, options)
    local groups = load_colors(palette)

    if type(options.custom_colors) == 'function' then
        table.insert(groups, options.custom_colors)
    end

    local function load_group(list)
        for _, group in ipairs(list) do
            if type(group) == 'function' then
                load_group(group(unpack(arguments)))
            elseif type(group[1]) == 'table' then
                load_group(vim.tbl_map(function(highlight)
                    return { highlight, group[2], group[3], group[4] }
                end, group[1]))
            else
                -- TODO: Support multiple options here.
                if type(vim.api.nvim_set_hl) == 'function' then
                    local def = {
                        fg = group[2] or 'NONE',
                        bg = group[3] or 'NONE',
                        sp = group[5] or 'NONE',
                    }

                    if group[4] then
                        def[group[4]] = true
                    end

                    vim.api.nvim_set_hl(0, group[1], def)
                else
                    vim.highlight.create(group[1], {
                        guifg = group[2] or 'NONE',
                        guibg = group[3] or 'NONE',
                        gui = group[4] or 'NONE',
                        guisp = group[5] or 'NONE',
                    })
                end
            end
        end
    end

    -- Thanks https://github.com/folke/tokyonight.nvim
    local function load_autocommands()
        vim.cmd('augroup labcoat')
        vim.cmd('autocmd!')
        vim.cmd([[autocmd ColorScheme * lua require('labcoat').destroy()]])

        vim.cmd('augroup end')
    end

    load_group(groups)
    load_autocommands()
    return { palette }
end

function M.destroy()
    if vim.g.colors_name ~= 'labcoat' then
        vim.cmd('autocmd! labcoat')
        vim.cmd('augroup! labcoat')
    end
end

function M.colorscheme(config)
    local palette = initialize(config or {})
    vim.o.termguicolors = true
    vim.g.colors_name = 'labcoat'
    vim.g.terminal_color_0 = palette.black
    vim.g.terminal_color_1 = palette.red
    vim.g.terminal_color_2 = palette.green
    vim.g.terminal_color_3 = palette.yellow
    vim.g.terminal_color_4 = palette.blue
    vim.g.terminal_color_5 = palette.violet
    vim.g.terminal_color_6 = palette.cyan
    vim.g.terminal_color_7 = palette.white
    vim.g.terminal_color_8 = palette.bright_black
    vim.g.terminal_color_9 = palette.bright_red
    vim.g.terminal_color_10 = palette.bright_green
    vim.g.terminal_color_11 = palette.bright_yellow
    vim.g.terminal_color_12 = palette.bright_blue
    vim.g.terminal_color_13 = palette.bright_violet
    vim.g.terminal_color_14 = palette.bright_cyan
    vim.g.terminal_color_15 = palette.bright_white
end

return M
