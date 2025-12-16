-- Contract Reference

local ReplicatedStorage = game:GetService('ReplicatedStorage')
local Sawdust = ReplicatedStorage:FindFirstChild('Sawdust')
assert(Sawdust, `Sawdust module not found in ReplicatedStorage; can not reference Contract module!`)

local Primitive = Sawdust:FindFirstChild('Primitive')
assert(Primitive, `Primitive module not found in Sawdust; can not reference Contract module!`)

local Contract = Primitive:FindFirstChild('Contract')
assert(Contract, `Contract module not found in Sawdust; can not reference Contract module!`)

local RContract = require(Contract)
return function(contract_info) : RContract.SawdustContract
    return RContract.new(contract_info)
end