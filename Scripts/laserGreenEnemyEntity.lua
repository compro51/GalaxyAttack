--Green Laser Enemy Script

texture = "LaserGreen.bmp"
texture_script = "./Scripts/laserGreen.lua"

bounding_min_x = -14
bounding_min_y = -12
bounding_max_x = 14
bounding_max_y = 12

damage = 1

local y_speed = 600

function runAI(x, y, elapsed)
	y = y + y_speed * elapsed
	
	return x, y
end;