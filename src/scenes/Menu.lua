local Menu = {}

function Menu.new(self)
    local obj = {
        id = "menu"
    }
    setmetatable(obj, { __index = Menu })
    return obj
end

function Menu.draw(self)
    _LG.print("Menu screen")
end

function Menu.update(self, dt)

end

return Menu