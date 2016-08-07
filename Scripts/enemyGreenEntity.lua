--Green Enemy Entity Script

texture = "EnemyGreen.bmp"
texture_script = "./Scripts/enemy.lua"

bounding_min_x = -14
bounding_min_y = -18
bounding_max_x = 14
bounding_max_y = 18

health = 4

local range = 20
local x_speed = 225
local y_speed = 300

function runAI(x, y, elapsed, x_start, right, timer, player_x, player_y)
	y = y + y_speed * elapsed
	
	if player_x > (x + range) then
		x = x + x_speed * elapsed
	
	elseif player_x < (x - range) then
		x = x - x_speed * elapsed
		
	end
	
	return x, y, right, timer
end;