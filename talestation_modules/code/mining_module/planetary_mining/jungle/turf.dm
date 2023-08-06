/// Jungle planets atmos
#define OPENTURF_JUNGLE_PLANET_ATMOS GAS_O2 + "=82;" + GAS_N2 + "=22;TEMP=320"

/*
* OPEN TURF
*/

/turf/open/misc/grass/jungle_planet
	name = "jungle grass"
	initial_gas_mix = OPENTURF_JUNGLE_PLANET_ATMOS
	planetary_atmos = TRUE
	baseturfs = /turf/open/misc/dirt/jungle_planet
	icon_state = "junglegrass"
	base_icon_state = "junglegrass"
	smooth_icon = 'icons/turf/floors/junglegrass.dmi'

/turf/open/misc/dirt/jungle_planet
	initial_gas_mix = OPENTURF_JUNGLE_PLANET_ATMOS
	planetary_atmos = TRUE

/turf/open/misc/beach/coast/jungle_planet
	initial_gas_mix = OPENTURF_JUNGLE_PLANET_ATMOS
	planetary_atmos = TRUE

/turf/open/misc/beach/coast/corner/jungle_planet
	initial_gas_mix = OPENTURF_JUNGLE_PLANET_ATMOS
	planetary_atmos = TRUE

/turf/open/water/beach/jungle_planet
	initial_gas_mix = OPENTURF_JUNGLE_PLANET_ATMOS
	planetary_atmos = TRUE

/turf/open/misc/beach/sand/jungle_planet
	initial_gas_mix = OPENTURF_JUNGLE_PLANET_ATMOS
	planetary_atmos = TRUE

/*
* CLOSED TURF
*/

/turf/closed/mineral/random/jungle_planet
	turf_type = /turf/open/misc/grass/jungle_planet
	baseturfs = /turf/open/misc/grass/jungle_planet
	initial_gas_mix = OPENTURF_JUNGLE_PLANET_ATMOS
	defer_change = TRUE

	mineralChance = 10

/turf/closed/mineral/random/jungle_planet/mineral_chances()
	return list(
		/obj/item/stack/ore/iron = 65,
		/obj/item/stack/ore/uranium = 25,
	)
