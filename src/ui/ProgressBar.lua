local ProgressBar = {}

function ProgressBar.new(self)
    local x = windowW * .1
    local maxX = windowW - x
    print(x)
    print(maxX)
    local obj = {
        id = "progressbar",
        xPos = x,
        xMaxPos = maxX,
        w = 0,
        h = 25,
        isLoading = true
    }
    setmetatable(obj, { __index = ProgressBar })
    return obj
end

function ProgressBar.draw(self)
    _LG.setColor(unpack(colors.progressBar.background))
    _LG.rectangle("fill", self.xPos, windowH * .9, self.w, self.h, 10)
end

function ProgressBar.update(self, dt)
    if self.isLoading and self.w + self.xPos < self.xMaxPos then
        self.w = self.w + 100 * dt
    else
        self.isLoading = false
    end
end

return ProgressBar