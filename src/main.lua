require("globals")
local SceneManager = require("components.SceneManager")

local loadingScenePath = "scenes.Loading"
local menuScenePath = "scenes.Menu"


local sceneManager = SceneManager:new()

function love.load()
    sceneManager:load(loadingScenePath)

    -- temp for testing
    if checkIsMobileDevice() then
        _LW.setMode( windowH, windowH, {borderless = true} )
    end
end

function love.draw()
    sceneManager:draw()

    printHelpers()
end

function love.update(dt)
    sceneManager:update(dt)
end