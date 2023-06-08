push = require 'push'
Class = require 'class'

require 'Brick'
require 'Ball'
require 'Util'

SPEED = 80
VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

gameState = 'play'

function love.load()
    brickTextures = love.graphics.newImage('sprites.png')
    brickFrames = GenerateQuads(brickTextures, 32, 16)

    ballTextures = love.graphics.newImage('balls.png')
    ballFrames = GenerateQuads(ballTexture, 14, 14)

    love.graphics.setDefaultFilter('nearest', 'nearest')
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })

    bricks = {}
    balls = {}
    GenerateBricks()
    GenerateBalls()
end

function love.update(dt)
    
end

function love.keypressed(key)
    
end

function love.draw()
    push:start()

    for k, brick in pairs(bricks) do
        brick:render()
    end

    for k, ball in pairs(balls) do
        ball:render()
    end

    push:finish()
end

function GenerateBricks()
    for x = 0, VIRTUAL_WIDTH / 32 - 7 do
        for y = 0, VIRTUAL_HEIGHT / 16 - 1 do
            table.insert(bricks, Brick(x * 32, y * 16, y + 1))
        end
    end
end

function GenerateBalls()
    for x = 7, VIRTUAL_WIDTH / 14 - 6 do
        for y = 0, VIRTUAL_HEIGHT / 14 - 1 do
            table.insert(balls, Ball(x * 14, y * 14, y + 1))
        end
    end
end