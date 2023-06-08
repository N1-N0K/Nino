Ball = Class{}

function Ball:init(x, y, color)
    self.tier = 1
    self.color = color

    self.x = x
    self.y = y

    self.width = 14
    self.height = 14
end

function Ball:render()
    love.graphics.draw(ballTextures, ballFrames[1], self.x, self.y)
end