_LG = love.graphics
_LT = love.timer
_LW = love.window

windowW = _LG:getWidth()
windowH = _LG:getHeight()

function checkIsMobileDevice()
    if love.system.getOS() == 'iOS' or love.system.getOS() == 'Android' then
        _LW.setMode( windowH, windowH, {borderless = true} )
    end
end

function printHelpers()
    _LG.print(windowW .. "x" .. windowH, 10, windowH - 40)
    _LG.print("FPS: " .. _LT.getFPS(), 10, windowH - 20)
end