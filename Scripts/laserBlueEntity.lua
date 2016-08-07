--Blue Laser Script

texture = "LaserBlue.bmp"
texture_script = "./Scripts/laserBlue.lua"

bounding_min_x = -14
bounding_min_y = -12
bounding_max_x = 14
bounding_max_y = 12

damage = 4
owner_type = 1

hit_emitter = "./Scripts/laserBlueHitEmitter.lua"

local y_speed = 400

function runAI(x, y, elapsed)
	y = y - y_speed * elapsed
	
	return x, y
end;