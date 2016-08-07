--Purple Enemy Entity Script

texture = "EnemyPurple.bmp"
texture_script = "./Scripts/enemy.lua"

bounding_min_x = -14
bounding_min_y = -18
bounding_max_x = 14
bounding_max_y = 18

health = 4

function runAI(x, y, elapsed, x_start, right, timer, player_x, player_y)
	local range_left = 0
	local range_right = 800
	local x_speed = 225
	local y_speed = 300
	local y_position = 200
	local shoot_rate = 1
	
	y = y + y_speed * elapsed
	
	if y > y_position then
		y = y_position
		
		if timer >= shoot_rate then
			add_entity(3, "./Scripts/laserYellowEntity.lua", x, y)
			timer = 0
		end
	end
	
	if right == true then
		x = x + x_speed * elapsed
		
		if x > range_right then
			x = range_right
			right = false
		end
	else
		x = x - x_speed * elapsed
		
		if x < range_left then
			x = range_left
			right = true
		end
	end
	
	return x, y, right, timer
end;