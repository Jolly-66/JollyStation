//ATMOS MIX IDS
#define JUNGLE_PLANET_DEFAULT_ATMOS "JUNGLE_PLANET_ATMOS"

// Atmos types used for planetary airs
/datum/atmosphere/jungle_planet
	id = JUNGLE_PLANET_DEFAULT_ATMOS

	base_gases = list(
		/datum/gas/oxygen=10,
		/datum/gas/nitrogen=5,
	)
	normal_gases = list(
		/datum/gas/oxygen=12,
		/datum/gas/nitrogen=12,
		/datum/gas/carbon_dioxide=4,
	)
	restricted_gases = list(
		/datum/gas/miasma=1.2,
		/datum/gas/water_vapor=0.1,
	)
	restricted_chance = 30

	minimum_pressure = HAZARD_LOW_PRESSURE + 10
	maximum_pressure = LAVALAND_EQUIPMENT_EFFECT_PRESSURE - 1

	minimum_temp = BODYTEMP_COLD_DAMAGE_LIMIT + 1
	maximum_temp = LAVALAND_MAX_TEMPERATURE
