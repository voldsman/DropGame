local SceneManager = {}

function SceneManager.new(self)
    local obj = {
        id = "scenemanager",
        path = nil,
        scene = nil
    }
    setmetatable(obj, { __index = SceneManager })
    return obj
end

function SceneManager.draw(self)
    if self.scene ~= nil then
        self.scene:draw()
    end
end

function SceneManager.update(self, dt)
    if self.scene ~= nil then
        self.scene:update(dt)
    end
end

function SceneManager.load(self, path)
    assert(type(path) == nil or type(path) == "string", "path must be string and not nil")
    if self.path ~= path and not package.loaded[path] then
        local loadedModule = require(path)
        self.path = path
        self.scene = loadedModule:new()
    end
end

return SceneManager