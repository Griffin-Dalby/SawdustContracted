--!strict
--[[

    Sawdust Global Cache

    Griffin Dalby
    Apache 2.0 License

        The Sawdust Cache provides a global information cache, allowing
    the developer to store data into categorized tables, or writing private
    protected tables.

--]]

--]] Services
--]] Modules
local CacheTypes = require(script['Cache.d'])

--]] Settings
--]] Constants
--]] Variables
--]] Functions
--]] Cache
local Cache = {}
Cache.__index = Cache

--]] Type Definition
type self<CacheTemplate> = {

} & CacheTypes.SawdustCache<CacheTemplate>

--]] Constructor

--[[
    Constructs a new Sawdust Cache object, allowing you to store data,
    and selectively expose stored data to the Global Cache.
]]
function Cache.new(schema: {[any]: any}) : CacheTypes.SawdustCache<schema>
    local self = setmetatable({} :: self<schema>)

    --> Properties
    

    return self
end

--]] Methods
function Cache:

--]] Accessors
