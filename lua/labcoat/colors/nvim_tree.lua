-- 'kyazdani42/nvim-tree.lua'
return function(c, s)
    return {
        { 'NvimTreeNormal', c.none, c.primary_bg },
        { 'NvimTreeSymlink', c.violet, c.none, s.bold },
        { 'NvimTreeFolderIcon', c.secondary_accent, c.none, s.bold },
        { 'NvimTreeRootFolder', c.violet, c.none, s.none },
        { 'NvimTreeExecFile', c.green, c.none, s.bold },
        { 'NvimTreeSpecialFile', c.yellow, c.none, s.bold },
        { 'NvimTreeImageFile', c.violet, c.none, s.bold },
        { 'NvimTreeOpenedFile', c.green, c.none, s.bold },
        { 'NvimTreeGitDirty', c.red, c.none, s.none },
        { 'NvimTreeGitDeleted', c.red, c.none, s.none },
        { 'NvimTreeGitNew', c.green, c.none, s.none },
        { 'NvimTreeStaged', c.green, c.none, s.none },
        { 'NvimTreeMerge', c.orange, c.none, s.none },
        { 'NvimTreeRenamed', c.violet, c.none, s.none },
        { 'NvimTreeNew', c.yellow, c.none, s.none },
    }
end
