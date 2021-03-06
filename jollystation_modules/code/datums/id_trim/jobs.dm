/// --ID Trims for modular jobs. --
// Bridge Officer
/datum/id_trim/job/bridge_officer
	assignment = "Bridge Officer"
	trim_icon = 'jollystation_modules/icons/obj/card.dmi'
	trim_state = "trim_bridgeofficer"
	full_access = list(ACCESS_MEDICAL, ACCESS_ENGINE, ACCESS_BRIG, ACCESS_COURT, ACCESS_ARMORY, ACCESS_SEC_DOORS, ACCESS_SECURITY,
						ACCESS_MAINT_TUNNELS, ACCESS_CONSTRUCTION, ACCESS_MORGUE, ACCESS_CARGO, ACCESS_MAILSORTING, ACCESS_HEADS,
						ACCESS_RESEARCH, ACCESS_MECH_SECURITY, ACCESS_MINERAL_STOREROOM, ACCESS_HOP, ACCESS_CE, ACCESS_CMO, ACCESS_RD, ACCESS_WEAPONS,
						ACCESS_LAWYER, ACCESS_EVA, ACCESS_FORENSICS_LOCKERS)
	wildcard_access = list(ACCESS_BRIG)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_ENGINE, ACCESS_BRIG, ACCESS_COURT, ACCESS_ARMORY, ACCESS_SEC_DOORS, ACCESS_SECURITY,
						ACCESS_MAINT_TUNNELS, ACCESS_CONSTRUCTION, ACCESS_MORGUE, ACCESS_CARGO, ACCESS_MAILSORTING, ACCESS_HEADS,
						ACCESS_RESEARCH, ACCESS_MECH_SECURITY, ACCESS_MINERAL_STOREROOM, ACCESS_HOP, ACCESS_CE, ACCESS_CMO, ACCESS_RD, ACCESS_WEAPONS)
	minimal_wildcard_access = list(ACCESS_BRIG)
	config_job = "bridge_officer"
	template_access = list(ACCESS_CAPTAIN, ACCESS_HOP, ACCESS_HOS, ACCESS_CHANGE_IDS)

// Toxicologist
/datum/id_trim/job/toxicologist
	assignment = "Toxicologist"
	trim_icon = 'jollystation_modules/icons/obj/card.dmi'
	trim_state = "trim_toxicologist"
	full_access = list(ACCESS_ROBOTICS, ACCESS_RND, ACCESS_TOXINS, ACCESS_TOXINS_STORAGE, ACCESS_RESEARCH, ACCESS_XENOBIOLOGY,
					ACCESS_MECH_SCIENCE, ACCESS_MINERAL_STOREROOM, ACCESS_TECH_STORAGE, ACCESS_GENETICS, ACCESS_AUX_BASE)
	minimal_access = list(ACCESS_RND, ACCESS_TOXINS, ACCESS_TOXINS_STORAGE, ACCESS_RESEARCH, ACCESS_MINERAL_STOREROOM, ACCESS_MECH_SCIENCE,)
	config_job = "toxicologist"
	template_access = list(ACCESS_CAPTAIN, ACCESS_RD, ACCESS_CHANGE_IDS)

// Xenobiologist
/datum/id_trim/job/xenobiologist
	assignment = "Xenobiologist"
	trim_icon = 'jollystation_modules/icons/obj/card.dmi'
	trim_state = "trim_xenobiologist"
	full_access = list(ACCESS_ROBOTICS, ACCESS_RND, ACCESS_TOXINS, ACCESS_TOXINS_STORAGE, ACCESS_RESEARCH, ACCESS_XENOBIOLOGY,
					ACCESS_MECH_SCIENCE, ACCESS_MINERAL_STOREROOM, ACCESS_TECH_STORAGE, ACCESS_GENETICS, ACCESS_AUX_BASE)
	minimal_access = list(ACCESS_RND, ACCESS_RESEARCH, ACCESS_XENOBIOLOGY, ACCESS_MINERAL_STOREROOM, ACCESS_MECH_SCIENCE,)
	config_job = "xenobiologist"
	template_access = list(ACCESS_CAPTAIN, ACCESS_RD, ACCESS_CHANGE_IDS)
