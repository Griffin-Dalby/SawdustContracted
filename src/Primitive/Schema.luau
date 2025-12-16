--[[

    Sawdust Schema

    Griffin Dalby
    Apache 2.0 License

        Schema Object specalized for the Sawdust ecosystem, easing
    enforcement of types and values.

--]]

--]] Services
--]] Modules
local PrimitiveType = require(script.Parent.Parent.Types.Primitive)

--]] Settings
--]] Constants
--]] Variables
--]] Functions
--]] Module
local Schema = {}
Schema.__index = Schema

--]] Type Definitions
type self = {

} | PrimitiveType.SawdustSchema<{}>

export type SchemaType = PrimitiveType.SchemaType
export type SchemaTemplate<Template> = PrimitiveType.SchemaTemplate<Template>
export type Schema<Template> = PrimitiveType.SawdustSchema<Template>

--]] Constructor

--[[
    Creates a new Schema Template for a Sawdust Implementation.<br>
    This will make it possible to verify against Contract agreements.

    @param schema Template for Schema values.

    @return Sawdust Schema 
]]
function Schema.new(schema_t: {})
    : PrimitiveType.SchemaTemplate<any>

    local self = setmetatable({} :: self, Schema)

    --> Verify Schema Template
    

    return self
end

--]] Methods
--]] Accessors

return Schema