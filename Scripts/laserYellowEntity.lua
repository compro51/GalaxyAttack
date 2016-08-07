--Yellow Laser Script

texture = "LaserYellow.bmp"
texture_script = "./Scripts/laserGreen.lua"

bounding_min_x = -14
bounding_min_y = -12
bounding_max_x = 14
bounding_max_y = 12

damage = 1
owner_type = 2

hit_emitter = "./Scripts/laserYellowHitEmitter.lua"

local y_speed = 600

function runAI(x, y, elapsed)
	y = y + y_speed * elapsed
	
	return x, y
end;