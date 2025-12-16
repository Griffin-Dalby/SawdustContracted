--!strict
--[[

    Sawdust Contract

    Griffin Dalby, 2025.
    Apache 2.0 License

        A "Contract" is a piece of data that describes runtime behavior
    of a Unit. These hold things such as ownership, schema, structure.

    Contracts get transpiled into "Units" at runtime, which can depend
    upon other units, and provide 

--]]

--]] Services
--]] Modules
--]] Implementations
local Impl = script.Parent.Parent.Impl
local Impl_Core, Impl_Util = Impl.Core, Impl.Util

local TCache = require(Impl_Core.Cache["Cache.d"])

--]] Settings
--]] Constants
--]] Variables
--]] Functions
--]] Module
local Contract = {}
Contract.__index = Contract

--]] Type Definition
type ContractInfo = {
    ID: string,
}

type self = {
    --> Properties
    
}
export type SawdustContract = typeof(setmetatable({} :: self, Contract))

--]] Constructor 

--[[
    Creates a new Contract; a "Contract" gets transpiled into a Unit
    for Runtime / Build time.
]]
function Contract.new(contract_info: ContractInfo) : SawdustContract
    local self = setmetatable({} :: self, Contract)

    return self
end

--]] Methods 
function Contract:Cache(cache_info: TCache.CacheSchema)
    
end

--]] Accessors 

return Contract