Brick = Class{}

function Brick:init(x, y, color)
	self.tier = 1
	self.color = color
	
	self.x = x
	self.y = y
	self.width = 32
	self.height = 16
end

function Brick:render()
	love.graphics.draw(brickTextures, brickFrames[1], self.x, self.y)
end
