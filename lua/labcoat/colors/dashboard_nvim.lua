-- 'glepnir/dashboard-nvim'
return function(c)
    return {
        { 'DashboardHeader', c.violet },
        { 'DashboardCenter', c.primary_fg },
        { 'DashboardShortCut', c.secondary_accent },
        { 'DashboardFooter', c.secondary_fg },
    }
end
