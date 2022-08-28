_LG = love.graphics
_LT = love.timer
_LW = love.window

windowW = _LG:getWidth()
windowH = _LG:getHeight()

textures = {
    droplet = _LG.newImage("assets/textures/droplet.png"),
    bucket = _LG.newImage("assets/textures/bucket.png")
}

fonts = {
    default = _LG.getFont(),
    evilEmpire40 = _LG.newFont("assets/fonts/EvilEmpire-4BBVK.ttf", 40),
    evilEmpire50 = _LG.newFont("assets/fonts/EvilEmpire-4BBVK.ttf", 50)
}

colors = {
    black = {0, 0, 0, 1},
    white = {1, 1, 1, 1},
    -- ui
    progressBar = {
        background = {.1, .9, .6, 1}
    },
    -- scenes
    loading = {
        text = {.1, .5, .9, 1},
        background = {0, .3, .4, 1}
    }
}

function checkIsMobileDevice()
    local os = love.system.getOS()
    if os == 'iOS' or os == 'Android' then
        _LW.setMode( windowH, windowH, {borderless = true} )
    end
end

function printHelpers()
    _LG.print(windowW .. "x" .. windowH, 10, windowH - 40)
    _LG.print("FPS: " .. _LT.getFPS(), 10, windowH - 20)
end