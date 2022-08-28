require("globals")
local GameManager = require("components.GameManager")
local gameManager = GameManager:new()

function love.load()
    -- temp for testing
    if checkIsMobileDevice() then
        _LW.setMode( windowH, windowH, {borderless = true} )
    end

    gameManager:load()
end

function love.draw()
    gameManager:draw()

    printHelpers()
end

function love.update(dt)
    gameManager:update(dt)
end