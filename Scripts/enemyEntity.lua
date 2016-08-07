--Enemy Entity Script

texture = "Enemy.bmp"
texture_script = "./Scripts/enemy.lua"

bounding_min_x = -14
bounding_min_y = -18
bounding_max_x = 14
bounding_max_y = 18

health = 4

local range = 25
local x_speed = 25
local y_speed = 250

function runAI(x, y, elapsed, x_start, right, timer, player_x, player_y)
	y = y + y_speed * elapsed
	
	if right == true then
		x = x + x_speed * elapsed
		
		if x >= (x_start + range) then
			x = x_start + range
			right = false
		end
	else
		x = x - x_speed * elapsed
		
		if x <= (x_start - range) then
			x = x_start - range
			right = true
		end
	end
	
	return x, y, right, timer
end