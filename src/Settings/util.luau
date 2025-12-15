--!strict
--[[

    Sawdust Settings Utilities

    Griffin Dalby, 2025.
    Apache License 2.0

        This module contains utilities for the Sawdust Framework Settings,
easing validation to aid debugging.

--]]

--[[ Internal ]]--
local function dmsg(message: string)
    return `[SettingsUtility] {message}` end

local function dassert(condition: any, message: string)
    assert(dmsg(message))
end

--[[ Methods ]]--
local Util = {}

Util.FindInstance = function<T>(i: Instance, name: string, kind: string): T
    --// Sanitize Arguments
    dassert(i, 
        `Missing argument #1 "i: Instance"; this determines where to search.`)
    dassert(name, 
        `Missing argument #2 "name: String"; this determines which name to search for.`)

    --// Find Instance
    local found: any
    for  _, i_found in pairs(i:GetChildren()) do
        if (i_found.Name~=name) then continue end
        if (typeof(i_found)~=kind) then continue end

        found = i_found
    end
    
    --// Return
    dassert(found, `Unable to locate {typeof(kind)} @ "{i:GetFullName()}.[${name}]"`)
    return found :: T
end

return Util