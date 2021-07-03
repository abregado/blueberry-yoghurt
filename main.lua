local pressed = false
local height = 100

function love.draw()
	love.graphics.setColor(1,1,1,1)
	love.graphics.print("Hello Caro", 100, height)
	if (pressed) then
		love.graphics.setColor(1,0,0,1)
		love.graphics.rectangle("line", 10,10,300,300)
	end
end

function love.update()
	if (love.keyboard.isDown("space")) then
		pressed = true
	else
		pressed = false
	end
	
	height = height + 1
	if (height  > 300) then 
		height = 100
	end
end