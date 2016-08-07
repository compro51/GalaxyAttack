--Level 8 Script

level = 8
message = "Incoming water planet. Mission: Destroy 90 enemies"

enemies_to_destroy = 90

music = "./Sounds/All This.wav"

background1 = "Stars.bmp"
background2 = "Stars.bmp"
background_speed = 0.2

boundary_left = 0
boundary_right = 800

entering_planet = true
planet = "PlanetWater.bmp"
planet_background1 = "Clouds.bmp"
planet_background2 = "Water.bmp"

next_level = "./Scripts/level9.lua"

function spawners()
	local red_rate = 0.25
	local green_rate = 5.5
	local purple_rate = 9
	local health_rate = 100
	local ammo_red_rate = 40
	local ammo_blue_rate = 100
	
	add_spawner(2, "./Scripts/enemyEntity.lua",        red_rate,       0.25, boundary_left, boundary_right, -32, -32)
	add_spawner(2, "./Scripts/enemyGreenEntity.lua",   green_rate,     0,    boundary_left, boundary_right, -64, -64)
	add_spawner(2, "./Scripts/enemyPurpleEntity.lua",  purple_rate,    0,    boundary_left, boundary_right, -64, -64)
	add_spawner(4, "./Scripts/itemHealthEntity.lua",   health_rate,    80,   boundary_left, boundary_right, -32, -32)
	add_spawner(4, "./Scripts/itemAmmoRedEntity.lua",  ammo_red_rate,  20,   boundary_left, boundary_right, -32, -32)
	add_spawner(4, "./Scripts/itemAmmoBlueEntity.lua", ammo_blue_rate, 90,   boundary_left, boundary_right, -32, -32)
end