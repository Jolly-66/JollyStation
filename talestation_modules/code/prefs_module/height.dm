// -- Height preferences --

#define HEIGHT_EXTREMELY_LARGE "Extremely Large"
#define HEIGHT_VERY_LARGE "Very Large"
#define HEIGHT_LARGE "Large"
#define HEIGHT_NO_CHANGE "Average Height"
#define HEIGHT_SMALL "Small"
#define HEIGHT_VERY_SMALL "Very Small"
#define HEIGHT_EXTREMELY_SMALL "Extremely Small"

#define DEFAULT_HEIGHT "Medium (Default)"

// Originally I wanted to do a prefs conversion, but I don't know how to do it
// And it wouldn't be relevant later anyhow
// Refer to #5053 if you wanna see how it was going

/datum/preference/choiced/mob_height
	savefile_key = "character_height_modern"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	can_randomize = FALSE
	var/list/height_to_actual = list(
		"Shortest" = HUMAN_HEIGHT_SHORTEST,
		"Short" = HUMAN_HEIGHT_SHORT,
		DEFAULT_HEIGHT = HUMAN_HEIGHT_MEDIUM,
		"Tall" = HUMAN_HEIGHT_TALL,
		"Tallest" = HUMAN_HEIGHT_TALLEST,
	)
	var/static/list/old_height_values = list(
		"Extremely Large",
		"Very Large",
		"Large",
		"Average Size (Default)",
		"Small",
		"Very Small",
		"Extremely Small",
	)

/datum/preference/choiced/mob_height/init_possible_values()
	return assoc_to_keys(height_to_actual)

/datum/preference/choiced/mob_height/apply_to_human(mob/living/carbon/human/target, value)
	// Just in case
	if(!ishuman(target))
		return

	var/height_actual = height_to_actual[value]
	if(isnull(height_actual))
		stack_trace("Invalid height for [type], [value]!")
		return

	target.set_mob_height(height_actual)

/datum/preference/choiced/mob_height/is_accessible(datum/preferences/preferences)
	if(!..(preferences))
		return FALSE

	var/datum/job/fav_job = preferences.get_highest_priority_job()
	return !istype(fav_job, /datum/job/ai) && !istype(fav_job, /datum/job/cyborg)

/datum/preference/choiced/mob_height/create_default_value(datum/preferences/preferences)
	return DEFAULT_HEIGHT

#undef DEFAULT_HEIGHT
