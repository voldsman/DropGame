local SceneManager = require("components.SceneManager")
local loadingScenePath = "scenes.Loading"
local menuScenePath = "scenes.Menu"

local GameManager = {}
function GameManager.new(self)
    local obj = {
        id = "gamemanager",
        sceneManager = SceneManager:new()
    }
    setmetatable(obj, { __index = GameManager })
    return obj
end

function GameManager.load(self)
    self.sceneManager:load(loadingScenePath)
end

function GameManager.draw(self)
    self.sceneManager:draw()
end

function GameManager.update(self, dt)
    self.sceneManager:update(dt)

    if self.sceneManager.scene.id == "loading" then
        if not self.sceneManager.scene.isLoading then
            self.sceneManager:load(menuScenePath)
        end
    end
end

return GameManager