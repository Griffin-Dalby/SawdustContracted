--!strict
--[[

    Sawdust Cache Types

    Griffin Dalby
    Apache 2.0 License

        Type Module for the Sawdust Cache.

--]]

local ImplRoot = script.Parent.Parent.Parent
local PrimitiveTypes = require(ImplRoot.Parent.Types.Primitive)
local Types = {}

--[[ CACHE OBJECT ]]--
export type CacheSchema = {
    [string]: PrimitiveTypes.SchemaType
}

export type SawdustCache = {
    --> Properties
    --> Methods
    --> Accessors
}

return Types