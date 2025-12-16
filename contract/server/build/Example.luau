--[[

    Example Contract

    Griffin Dalby
    Apache 2.0 License

        This is an example contract that demonstrates how to use the Sawdust
    Contract system.

--]]

require(script.Parent.Parent.RContract){
    ID = 'example'
}
    :Cache{
        ValueA = 'string',
        ValueB = 'Vector3'
    }