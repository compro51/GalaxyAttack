--Level 1 Script

level = 1
message = "Incoming alien ships! Mission: Destroy 20 enemies\n\nPress Start to begin"

enemies_to_destroy = 20

music = "./Sounds/Full On.wav"

background1 = "Stars.bmp"
background2 = "Stars.bmp"
background_speed = 0.2

boundary_left = 0
boundary_right = 800

entering_planet = false
planet = ""
planet_background1 = ""
planet_background2 = ""

next_level = "./Scripts/level2.lua"

function spawners()
	local red_rate = 0.75
	local health_rate = 100
	
	add_spawner(2, "./Scripts/enemyEntity.lua",      red_rate,    0.75, boundary_left, boundary_right, -32, -32)
	add_spawner(4, "./Scripts/itemHealthEntity.lua", health_rate, 0,    boundary_left, boundary_right, -32, -32)
end