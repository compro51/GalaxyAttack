--Level 2 Script

level = 2
message = "Sending red laser ammo packs. Mission: Destroy 30 enemies"

enemies_to_destroy = 30

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

next_level = "./Scripts/level3.lua"

function spawners()
	local red_rate = 0.6
	local health_rate = 100
	local ammo_red_rate = 40
	
	add_spawner(2, "./Scripts/enemyEntity.lua",       red_rate,      0.6, boundary_left, boundary_right, -32, -32)
	add_spawner(4, "./Scripts/itemHealthEntity.lua",  health_rate,   40,  boundary_left, boundary_right, -32, -32)
	add_spawner(4, "./Scripts/itemAmmoRedEntity.lua", ammo_red_rate, 30,  boundary_left, boundary_right, -32, -32)
end