local Loading = {}

function Loading.new(self)
    local obj = {
        id = "loading"
    }
    setmetatable(obj, { __index = Loading })
    return obj
end

function Loading.draw(self)
    _LG.print("Loading screen")
end

function Loading.update(self, dt)

end

return Loading