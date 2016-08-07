--Level 5 Script

level = 5
message = "Mission: Destroy 60 enemies"

enemies_to_destroy = 60

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

next_level = "./Scripts/level6.lua"

function spawners()
	local red_rate = 0.35
	local green_rate = 6.5
	local health_rate = 100
	local ammo_red_rate = 40
	
	add_spawner(2, "./Scripts/enemyEntity.lua",       red_rate,      0.35, boundary_left, boundary_right, -32, -32)
	add_spawner(2, "./Scripts/enemyGreenEntity.lua",  green_rate,    0,    boundary_left, boundary_right, -64, -64)
	add_spawner(4, "./Scripts/itemHealthEntity.lua",  health_rate,   90,   boundary_left, boundary_right, -32, -32)
	add_spawner(4, "./Scripts/itemAmmoRedEntity.lua", ammo_red_rate, 30,   boundary_left, boundary_right, -32, -32)
end