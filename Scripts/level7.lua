--Level 7 Script

level = 7
message = "Incoming purple alien ships. Mission: Destroy 80 enemies"

enemies_to_destroy = 80

music = "./Sounds/All This.wav"

background1 = "Stars.bmp"
background2 = "Stars.bmp"
background_speed = 0.2

boundary_left = 0
boundary_right = 800

entering_planet = false
planet = ""
planet_background1 = ""
planet_background2 = ""

next_level = "./Scripts/level8.lua"

function spawners()
	local red_rate = 0.30
	local green_rate = 6
	local purple_rate = 10
	local health_rate = 100
	local ammo_red_rate = 40
	local ammo_blue_rate = 100
	
	add_spawner(2, "./Scripts/enemyEntity.lua",        red_rate,       0.30, boundary_left, boundary_right, -32, -32)
	add_spawner(2, "./Scripts/enemyGreenEntity.lua",   green_rate,     0,    boundary_left, boundary_right, -64, -64)
	add_spawner(2, "./Scripts/enemyPurpleEntity.lua",  purple_rate,    5,    boundary_left, boundary_right, -64, -64)
	add_spawner(4, "./Scripts/itemHealthEntity.lua",   health_rate,    50,   boundary_left, boundary_right, -32, -32)
	add_spawner(4, "./Scripts/itemAmmoRedEntity.lua",  ammo_red_rate,  0,    boundary_left, boundary_right, -32, -32)
	add_spawner(4, "./Scripts/itemAmmoBlueEntity.lua", ammo_blue_rate, 50,   boundary_left, boundary_right, -32, -32)
end