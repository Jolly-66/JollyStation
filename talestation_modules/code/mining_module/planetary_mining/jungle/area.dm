/area/jungle_planet
	icon = 'icons/area/areas_station.dmi'
	icon_state = "mining"
	has_gravity = STANDARD_GRAVITY
	flags_1 = NONE
	area_flags = VALID_TERRITORY | UNIQUE_AREA | FLORA_ALLOWED
	sound_environment = SOUND_AREA_LAVALAND
	ambient_buzz = 'sound/ambience/magma.ogg'
	base_lighting_color = COLOR_PALE_GREEN
	base_lighting_alpha = 200

/area/jungle_planet/surface
	name = "Jungle Planet"
	icon_state = "explored"
	always_unpowered = TRUE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	requires_power = TRUE
	ambience_index = AMBIENCE_MINING
	area_flags = VALID_TERRITORY | UNIQUE_AREA
	min_ambience_cooldown = 70 SECONDS
	max_ambience_cooldown = 220 SECONDS

/area/jungle_planet/underground
	name = "Jungle Planet Depths"
	icon_state = "unexplored"
	always_unpowered = TRUE
	requires_power = TRUE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	ambience_index = AMBIENCE_MINING
	area_flags = VALID_TERRITORY | UNIQUE_AREA | FLORA_ALLOWED
	min_ambience_cooldown = 70 SECONDS
	max_ambience_cooldown = 220 SECONDS

/area/jungle_planet/surface/outdoors
	name = "Jungle Planet Surface"
	outdoors = TRUE

/area/jungle_planet/surface/outdoors/river
	name = "Jungle Planet River"

/area/jungle_planet/surface/outdoors/unexplored
	icon_state = "unexplored"
	area_flags = VALID_TERRITORY | UNIQUE_AREA | CAVES_ALLOWED | FLORA_ALLOWED | AREA_USES_STARLIGHT
	map_generator = /datum/map_generator/cave_generator/jungle_planet

/area/jungle_planet/surface/outdoors/unexplored/danger
	icon_state = "danger"
	area_flags = VALID_TERRITORY | UNIQUE_AREA | CAVES_ALLOWED | FLORA_ALLOWED | AREA_USES_STARLIGHT
