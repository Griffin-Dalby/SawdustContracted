--!strict
--[[

    Sawdust Settings

    Griffin Dalby, 2025.
    Apache License 2.0

        This module contains runtime settings for the Sawdust library,
    and covers all implementations.

--]]

--[[ Modules ]]--
local Util = require(script.util)

--[[ Environment ]]
local env: {
    ROOT: Instance,
} = {
    ROOT = script.Parent
}

--[[ Export Settings ]]--
export type SawdustSettings = {
    global: {
        debug: boolean,
        version: number,
    },

    core: {
        networking: {
            fetch: Instance,
            debug: {
                emit: boolean,
                fetch: boolean,
            }
        },

        content: {
            fetch: Instance,
            debug: {
                cdn: boolean,
                preload: boolean,
            }
        },

        cache: {
            debug: {
                
            }
        },
    },
}
return {
    global = {
        debug = false,
        version = 5,
    },

    core = {
        networking = {
            fetch = Util.FindInstance(env.ROOT, 'Events', 'Instance'),
            debug = {
                emit = true,
                fetch = true
            }
        },

        content = {
            fetch = Util.FindInstance(env.ROOT, 'Content', 'Instance'),
            debug = {
                cdn = true,
                preload = true
            }
        },

        cache = {
            debug = {
                
            }
        }
    }
} :: SawdustSettings