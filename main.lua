function love.load()
    love.window.setMode(800, 800)
    love.graphics.setBackgroundColor(love.math.colorFromBytes(108, 111, 133))
    WindowX, WindowY = love.graphics.getDimensions()
    print(love.graphics.getDimensions())
    PixelX = (WindowX / 2) / 10
    PixelY = WindowY / 20
    YBuffer = 21 * PixelY
    Field = {
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    }     -- 10x40
    Blocks = {
        { -- I
            { 0, 0, 0, 0 },
            { 0, 0, 0, 0 },
            { 1, 1, 1, 1 },
            { 0, 0, 0, 0 }
        },
        { -- J
            { 0, 0, 0, 0 },
            { 2, 0, 0, 0 },
            { 2, 2, 2, 2 },
            { 0, 0, 0, 0 }
        },
        { -- L
            { 0, 0, 0, 0 },
            { 0, 0, 0, 3 },
            { 3, 3, 3, 3 },
            { 0, 0, 0, 0 }
        },
        { -- O
            { 0, 0, 0, 0 },
            { 0, 4, 4, 0 },
            { 0, 4, 4, 0 },
            { 0, 0, 0, 0 }
        },
        { -- S
            { 0, 0, 0, 0 },
            { 0, 5, 5, 0 },
            { 5, 5, 0, 0 },
            { 0, 0, 0, 0 }
        },
        { -- Z
            { 0, 0, 0, 0 },
            { 6, 6, 0, 0 },
            { 0, 6, 6, 0 },
            { 0, 0, 0, 0 }
        },
        { -- T
            { 0, 0, 0, 0 },
            { 0, 7, 0, 0 },
            { 7, 7, 7, 0 },
            { 0, 0, 0, 0 }
        }
    }
end

function love.update(dt)

end

function love.draw()
    love.graphics.setColor(love.math.colorFromBytes(204, 208, 218))
    love.graphics.rectangle("fill", WindowX * 0.25, 0, WindowX * 0.5, WindowY)
    for i, v in ipairs(Field) do
        for j, w in ipairs(v) do
            if w == 1 then
                love.graphics.setColor(love.math.colorFromBytes(4, 165, 229))
                love.graphics.rectangle("fill", (WindowX * 0.25) + ((j - 1) * PixelX), (i * PixelY) - YBuffer, PixelX,
                    PixelY)
            elseif w == 2 then
                love.graphics.setColor(love.math.colorFromBytes(30, 102, 245))
                love.graphics.rectangle("fill", (WindowX * 0.25) + ((j - 1) * PixelX), (i * PixelY) - YBuffer, PixelX,
                    PixelY)
            elseif w == 3 then
                love.graphics.setColor(love.math.colorFromBytes(254, 100, 11))
                love.graphics.rectangle("fill", (WindowX * 0.25) + ((j - 1) * PixelX), (i * PixelY) - YBuffer, PixelX,
                    PixelY)
            elseif w == 4 then
                love.graphics.setColor(love.math.colorFromBytes(223, 142, 29))
                love.graphics.rectangle("fill", (WindowX * 0.25) + ((j - 1) * PixelX), (i * PixelY) - YBuffer, PixelX,
                    PixelY)
            elseif w == 5 then
                love.graphics.setColor(love.math.colorFromBytes(64, 160, 43))
                love.graphics.rectangle("fill", (WindowX * 0.25) + ((j - 1) * PixelX), (i * PixelY) - YBuffer, PixelX,
                    PixelY)
            elseif w == 6 then
                love.graphics.setColor(love.math.colorFromBytes(210, 15, 57))
                love.graphics.rectangle("fill", (WindowX * 0.25) + ((j - 1) * PixelX), (i * PixelY) - YBuffer, PixelX,
                    PixelY)
            elseif w == 7 then
                love.graphics.setColor(love.math.colorFromBytes(136, 57, 239))
                love.graphics.rectangle("fill", (WindowX * 0.25) + ((j - 1) * PixelX), (i * PixelY) - YBuffer, PixelX,
                    PixelY)
            end
        end
    end
end
