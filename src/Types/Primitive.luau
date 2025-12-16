--[[

    Primitive Types

    Griffin Dalby
    Apache 2.0 License

        Provides Types for Sawdust Primitive objects.

--]]

local Primitives = {}

--[[ SCHEMA ]]--
--#region

--[[
    List of all types usable in the Schema Typecheck behavior.

    @param AddTypes... Additional Types to be used with typechecking.
]]
export type SchemaType = 
      'string'
    | 'number'
    | 'table'
    | 'Instance'
    | 'Vector3'
    | 'CFrame'

--[[
    Template that defines what a Schema should validate with the given
    set of information.
]]
export type SchemaTemplate<Template> = {
    --> Properties
    schema: Template,

    --> Methods
    Build: (self: SchemaTemplate<Template>) -> nil
} 
& Template --> Append any template given from a impl's contract.

--[[
    Schema Verification to easily add runtime type/value enforcement
    for a wide variety of usage cases.

    @param Template Schema Template to use for Typechecking.
    @param AddTypes Additional types that will be used for default entry Typechecking.
]]
export type SawdustSchema<Template> = {
    --> Properties
    template: SchemaTemplate<Template>,

    --> Methods
    Verify: (self: SawdustSchema<Template>, compare_to: SchemaTemplate<{any}>) -> boolean,

}

--#endregion

--[[ CONTRACT ]]--
--#region

--[[
    Object containing information on how a Unit should behave.<br>
    A "Contract" gets transpiled into a Unit for Runtime / Build time.
]]
export type SawdustContract = {
    --> Properties
}

--#endregion

--[[ UNIT ]]--
--#region

--[[
    Dynamic object that handles buildtime or runtime logic, initally
    being built from a contract.
]]
export type SawdustUnit = {

}

--#endregion

return Primitives