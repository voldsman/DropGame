require("globals")
local GameManager = require("components.GameManager")
local gameManager = GameManager:new()

function love.load()
    checkIsMobileDevice()

    gameManager:load()
end

function love.draw()
    gameManager:draw()

    printHelpers()
end

function love.update(dt)
    gameManager:update(dt)
end