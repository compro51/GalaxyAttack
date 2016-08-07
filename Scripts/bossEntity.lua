--Boss Entity Script

texture = "Boss.bmp"
texture_script = "./Scripts/boss.lua"

bounding_min_x = -200
bounding_min_y = -200
bounding_max_x = 200
bounding_max_y = 256

health = 200

num_weak_points = 2

weak_point_entity1 = "./Scripts/weakPointEntity.lua"
weak_point_pos_x1  = 80
weak_point_pos_y1  = -100

weak_point_entity2 = "./Scripts/weakPointEntity.lua"
weak_point_pos_x2  = -70
weak_point_pos_y2  = -100

function runAI(x, y, elapsed, x_start, right, down, timer1, timer2, points, player_x, player_y)
	local range = 250
	local y_position = 225
	local x_speed = 250
	local y_speed = 250
	local y_attack_speed = 350
	local y_attack_range = 300
	local timer_min = 3
	local timer_rand_range = 3
	local timer_interval = 7
	local enemy_rate = 0.25
	
	if points == 0 and timer2 >= enemy_rate then
		add_entity(2, "./Scripts/enemyEntity.lua", math.random(0, 800), -32)
		timer2 = 0
	end
	
	if timer1 >= timer_interval then
		if down == true then
			y = y + y_attack_speed * elapsed
			
			if y > (y_position + y_attack_range) then
				y = y_position + y_attack_range
				down = false
			end
		else
			y = y - y_attack_speed * elapsed
			
			if y < y_position then
				y = y_position
				down = true
				timer1 = math.random(timer_min, timer_min + timer_rand_range)
			end
		end
	else
		y = y + y_speed * elapsed
		
		if y > y_position then
			y = y_position
		end
	end
	
	if y >= y_position then
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
	end
	
	return x, y, right, down, timer1, timer2
end