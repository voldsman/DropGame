require("globals")
local SceneManager = require("components.SceneManager")

local loadingScenePath = "scenes.Loading"
local menuScenePath = "scenes.Menu"


local sceneManager = SceneManager:new()

function love.load()
    sceneManager:load(loadingScenePath)
end

function love.draw()
    sceneManager:draw()
end

function love.update(dt)
    sceneManager:update(dt)
end