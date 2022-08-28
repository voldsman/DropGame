local Menu = {}

function Menu.new(self)
    local obj = {
        id = "menu"
    }
    setmetatable(obj, { __index = Menu })
    return obj
end

function Menu.draw(self)
    local font = fonts.evilEmpire50
    _LG.setFont(font)
    _LG.setColor(unpack(colors.menu.text))
    _LG.setBackgroundColor(unpack(colors.menu.background))

    -- Draw text
    local text = "Menu"
    local textWidth = font:getWidth(text)
    _LG.print(text, windowW / 2 - textWidth / 2, 200)

end

function Menu.update(self, dt)

end

return Menu