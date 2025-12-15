--[[

    Primative Types

    Griffin Dalby
    Apache 2.0 License

        Provides Types for Sawdust Primative objects.

--]]

local Primatives = {}

--[[ SCHEMA ]]--
--#region

--[[
    List of all types usable in the Schema Typecheck behavior.

    @param AddTypes... Additional Types to be used with typechecking.
]]
export type SchemaTemplateType<AddTypes> = 
      'string'
    | 'number',
    | 'Instance',
    | 'Vector3',
    | 'CFrame',
    | unpack(AddTypes)

--[[
    Raw template dictating which types should be used and which values should
    be expected.
]]
export type SchemaRawTemplate<Template, AddTypes> = {
    [string]: SchemaTemplateType<AddTypes>,

    --> Sub-directory can be another template
    --> TODO: Investigate sub-template entry typecheck
    [string]: {} | SchemaRawTemplate<Template, AddTypes>,
}

--[[
    Template that defines what a Schema should validate with the given
    set of information.
]]
export type SchemaTemplate<Template, AddTypes> = {
    --> Properties
    schema: SchemaRawTemplate<Template, AddTypes>,

    --> Methods
    Build: (self: SchemaTemplate<Template, AddTypes>, ): 
} 
& Template --> Append any template given from a impl's contract.

--[[
    Schema Verification to easily add runtime type/value enforcement
    for a wide variety of usage cases.

    @param Template Schema Template to use for Typechecking.
    @param AddTypes Additional types that will be used for default entry Typechecking.
]]
export type SawdustSchema<Template, AddTypes> = {
    --> Properties
    template: SchemaTemplate<Template, AddTypes>

    --> Methods
    Verify: (self: SawdustSchema<Template, AddTypes>, compare_to: SchemaTemplate<{any}, {any}>) -> boolean,

}

--#endregion

--[[ CONTRACT ]]--
--#region

--[[
    Object containing information on how a Unit should behave.<br>
    A "Contract" gets transpiled into a Unit for Runtime / Build time.
]]
export type SawdustContract = {

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

return Primatives