--Demo Level Script

level = 0
message = "Demo: Enjoy playing!"

enemies_to_destroy = 0

music = "./Sounds/Pompeii.wav"

background1 = "Stars.bmp"
background2 = "Stars.bmp"
background_speed = 0.2

boundary_left = 0
boundary_right = 800

entering_planet = false
planet = "PlanetDesert.bmp"
planet_background1 = "Clouds.bmp"
planet_background2 = "Desert.bmp"

next_level = "./Scripts/levelDemo.lua"

function spawners()
	add_entity(5, "./Scripts/bossEntity.lua", (boundary_right - boundary_left) / 2, -512)
end