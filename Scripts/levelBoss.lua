--Boss Level Script

level = 0
message = "WARNING! Incoming mothership!"

enemies_to_destroy = 0

music = "./Sounds/Mechanolith.wav"

background1 = "Stars.bmp"
background2 = "Stars.bmp"
background_speed = 0.2

boundary_left = 0
boundary_right = 800

entering_planet = false
planet = ""
planet_background1 = ""
planet_background2 = ""

next_level = "./Scripts/level1.lua"

function spawners()
	local health_rate = 80
	local ammo_red_rate = 40
	local ammo_blue_rate = 80
	
	add_entity(5, "./Scripts/bossEntity.lua", (boundary_right - boundary_left) / 2, -512)
	
	add_spawner(4, "./Scripts/itemHealthEntity.lua",   health_rate,    0, boundary_left, boundary_right, -32, -32)
	add_spawner(4, "./Scripts/itemAmmoRedEntity.lua",  ammo_red_rate,  0, boundary_left, boundary_right, -32, -32)
	add_spawner(4, "./Scripts/itemAmmoBlueEntity.lua", ammo_blue_rate, 0, boundary_left, boundary_right, -32, -32)
end