--Level 9 Script

level = 9
message = "Entering alien base. Mission: Destroy 100 enemies"

enemies_to_destroy = 100

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

next_level = "./Scripts/levelBoss.lua"

function spawners()
	local red_rate = 0.20
	local green_rate = 5
	local purple_rate = 8
	local health_rate = 80
	local ammo_red_rate = 40
	local ammo_blue_rate = 80
	
	add_spawner(2, "./Scripts/enemyEntity.lua",        red_rate,       0.20, boundary_left, boundary_right, -32, -32)
	add_spawner(2, "./Scripts/enemyGreenEntity.lua",   green_rate,     0,    boundary_left, boundary_right, -64, -64)
	add_spawner(2, "./Scripts/enemyPurpleEntity.lua",  purple_rate,    0,    boundary_left, boundary_right, -64, -64)
	add_spawner(4, "./Scripts/itemHealthEntity.lua",   health_rate,    10,   boundary_left, boundary_right, -32, -32)
	add_spawner(4, "./Scripts/itemAmmoRedEntity.lua",  ammo_red_rate,  0,    boundary_left, boundary_right, -32, -32)
	add_spawner(4, "./Scripts/itemAmmoBlueEntity.lua", ammo_blue_rate, 0,    boundary_left, boundary_right, -32, -32)
end