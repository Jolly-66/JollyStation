/datum/map_generator/cave_generator/jungle_planet
	weighted_open_turf_types = list(/turf/open/misc/grass/jungle_planet = 1)
	weighted_closed_turf_types = list(/turf/closed/mineral/random/jungle_planet = 1)

// We need mobs. Later, probably
	weighted_mob_spawn_list = list(
		null,
		)

	weighted_flora_spawn_list = list(
		/obj/structure/flora/tree/jungle/style_random = 2,
		/obj/structure/flora/bush/jungle/a/style_random = 8,
		/obj/structure/flora/bush/jungle/b/style_random = 8,
		/obj/structure/flora/bush/jungle/c/style_random = 8,
		/obj/structure/flora/bush/flowers_br/style_random = 6,
		/obj/structure/flora/bush/flowers_pp/style_random = 6,
		/obj/structure/flora/bush/flowers_yw/style_random = 6,
	)

	weighted_feature_spawn_list = list(
		null,
	)

	initial_closed_chance = 35
	smoothing_iterations = 20
	flora_spawn_chance = 65
/*
/datum/map_generator/cave_generator/lavaland/ruin_version
	weighted_open_turf_types = list(/turf/open/misc/asteroid/basalt/lava_land_surface/no_ruins = 1)
	weighted_closed_turf_types = list(/turf/closed/mineral/random/volcanic/do_not_chasm = 1)
*/
