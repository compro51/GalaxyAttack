--Demo Level Script

level = 0
message = "Demo: Enjoy playing!"

enemies_to_destroy = 0

music = "./Sounds/Burly Brawl.wav"

background1 = "Stars.bmp"
background2 = "Stars.bmp"
background_speed = 0.2

boundary_left = 0
boundary_right = 800

entering_planet = false
planet = "PlanetDesert.bmp"
planet_background1 = ""
planet_background2 = "Desert.bmp"

next_level = "./Scripts/levelDemo.lua"

function spawners()
	local red_rate = 0.25
	local green_rate = 15
	local purple_rate = 5
	local health_rate = 40
	local red_ammo_rate = 20
	local blue_ammo_rate = 60
	
	add_spawner(2, "./Scripts/enemyEntity.lua",        red_rate,      0, boundary_left, boundary_right, -32, -32)
	add_spawner(2, "./Scripts/enemyGreenEntity.lua",   green_rate,    0, boundary_left, boundary_right, -64, -64)
	add_spawner(2, "./Scripts/enemyPurpleEntity.lua",  purple_rate,   0, boundary_left, boundary_right, -64, -64)
	add_spawner(4, "./Scripts/itemHealthEntity.lua",   health_rate,   0, boundary_left, boundary_right, -32, -32)
	add_spawner(4, "./Scripts/itemAmmoRedEntity.lua",  red_ammo_rate, 0, 300, 300, -32, -32)
	add_spawner(4, "./Scripts/itemAmmoBlueEntity.lua", red_ammo_rate, 0, 320, 320, -32, -32)
end