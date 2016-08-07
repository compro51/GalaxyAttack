--Level 4 Script

level = 4
message = "Incoming desert planet. Mission: Destroy 50 enemies"

enemies_to_destroy = 50

music = "./Sounds/Full On.wav"

background1 = "Stars.bmp"
background2 = "Stars.bmp"
background_speed = 0.2

boundary_left = 0
boundary_right = 800

entering_planet = true
planet = "PlanetDesert.bmp"
planet_background1 = "Clouds.bmp"
planet_background2 = "Desert.bmp"

next_level = "./Scripts/level5.lua"

function spawners()
	local red_rate = 0.4
	local green_rate = 7
	local health_rate = 100
	local ammo_red_rate = 40
	
	add_spawner(2, "./Scripts/enemyEntity.lua",       red_rate,      0.4, boundary_left, boundary_right, -32, -32)
	add_spawner(2, "./Scripts/enemyGreenEntity.lua",  green_rate,    0,   boundary_left, boundary_right, -64, -64)
	add_spawner(4, "./Scripts/itemHealthEntity.lua",  health_rate,   0,   boundary_left, boundary_right, -32, -32)
	add_spawner(4, "./Scripts/itemAmmoRedEntity.lua", ammo_red_rate, 10,  boundary_left, boundary_right, -32, -32)
end