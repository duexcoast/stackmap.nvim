local M = {}

-- M.setup = function(opts)
--     print("Options:", opts)
-- end
--

local find_mapping = function(maps, lhs)
    for _, value in ipairs(maps) do
        if value.lhs == lhs then
            return value
        end
    end
end
    

M.push = function (name, mode, mappings)
    local maps = vim.api.nvim_get_keymap(mode)

    local existingMaps = {}
    for lhs, rhs in pairs(mappings) do
        print("Searching for:", lhs)
        P(find_mapping(maps, lhs))
    end

    -- P(maps)
end

M.pop = function (name)
    
end


M.push("debug_mode", "n",{
    [" sv"] = "echo 'Hello'",
    [" sz"] = "echo 'Goodbye'",
})


--[[
lua require("stackmap").pop("debug_mode")
]]

return M
