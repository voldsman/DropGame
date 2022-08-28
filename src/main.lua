require("globals")
local GameManager = require("components.GameManager")
local gameManager = GameManager:new()

function love.load()
    checkIsMobileDevice()

    gameManager:load()
end

function love.draw()
    gameManager:draw()

    _LG.setColor(unpack(colors.default.white))
    _LG.setFont(fonts.default)
    printHelpers()
end

function love.update(dt)
    gameManager:update(dt)
end