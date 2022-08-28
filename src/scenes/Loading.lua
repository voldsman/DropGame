local ProgressBar = require("ui.ProgressBar")

local Loading = {}

function Loading.new(self)
    local obj = {
        id = "loading",
        isLoading = true,
        -- inject
        progressBar = ProgressBar:new()
    }
    setmetatable(obj, { __index = Loading })
    return obj
end

function Loading.draw(self)
    local font = fonts.evilEmpire50
    _LG.setFont(font)
    _LG.setColor(unpack(colors.loading.text))
    _LG.setBackgroundColor(unpack(colors.loading.background))

    -- Draw text
    local text = "Drop Game"
    local textWidth = font:getWidth(text)
    -- 20% of height, 0.23 rad rotation
    _LG.print(text, windowW / 2 - textWidth / 2, windowH * .2, .23)

    -- progress bar
    self.progressBar:draw()
end

function Loading.update(self, dt)
    self.progressBar:update(dt)

    if not self.progressBar.isLoading then
        self.isLoading = false
    end
end

return Loading