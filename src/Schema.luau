--[[

    Sawdust Schema

    Griffin Dalby
    Apache 2.0 License

        Schema Object specalized for the Sawdust ecosystem, easing
    enforcement of types and values.

--]]

--]] Services
--]] Modules
local PrimativeType = require(script.Parent.Types.Primative)

--]] Settings
--]] Constants
--]] Variables
--]] Functions
--]] Module
local Schema = {}
Schema.__index = Schema

--]] Type Definitions
type self = {

} & PrimativeType.SawdustSchema<{}, {}>

--]] Constructor

--[[
    Creates a new Schema Template for a Sawdust Implementation.<br>
    This will make it possible to create new, properly typechecked
    schemas for developer usage.

    @param schema Template for Schema values.
    @param additional_types Additional types for default entries.

    @return Sawdust Schema 
]]
function Schema.template(schema: {}, additional_types: {})
    : PrimativeType.SchemaTemplate<schema, additional_types>

    local self = setmetatable({} :: self, Schema)

    return self
end

--]] Methods
--]] Accessors

return schema