-- 'rcarriga/nvim-notify'
return function(c, s)
    return {
        { { 'NotifyERRORBorder', 'NotifyERRORIcon', 'NotifyERRORTitle' }, c.red },
        { { 'NotifyWARNBorder', 'NotifyWARNIcon', 'NotifyWARNTitle' }, c.orange },
        { { 'NotifyINFOBorder', 'NotifyINFOIcon', 'NotifyINFOTitle' }, c.green },
        { { 'NotifyDEBUGBorder', 'NotifyDEBUGIcon', 'NotifyDEBUGTitle' }, c.secondary_accent },
        { { 'NotifyTRACEBorder', 'NotifyTRACEIcon', 'NotifyTRACETitle' }, c.violet },
    }
end
