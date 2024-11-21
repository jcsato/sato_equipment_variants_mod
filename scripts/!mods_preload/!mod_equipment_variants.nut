::mods_registerMod("sato_equipment_variants", 1.5, "Sato's Equipment Variants");

::mods_queue("sato_equipment_variants", null, function() {
	::include("script_hooks/mod_sev_adorned_closed_flat_top_with_mail");
	::include("script_hooks/mod_sev_adorned_full_helm");
	::include("script_hooks/mod_sev_adorned_heavy_mail_hauberk");
	::include("script_hooks/mod_sev_adorned_warriors_armor");
	::include("script_hooks/mod_sev_basic_mail_shirt");
	::include("script_hooks/mod_sev_coat_of_plates");
	::include("script_hooks/mod_sev_coat_of_scales");
	::include("script_hooks/mod_sev_dented_nasal_helmet");
	::include("script_hooks/mod_sev_footman_armor");
	::include("script_hooks/mod_sev_heavy_mail_coif");
	::include("script_hooks/mod_sev_hooded_full_helm");
	::include("script_hooks/mod_sev_mail_and_lamellar_plating");
	::include("script_hooks/mod_sev_mail_hauberk");
	::include("script_hooks/mod_sev_noble_mail");
	::include("script_hooks/mod_sev_padded_mail_and_lamellar_hauberk");
	::include("script_hooks/mod_sev_scale_armor");
	::include("script_hooks/mod_sev_southern_light_shield");

	::include("script_hooks/mod_sev_southern_nobles");
	::include("script_hooks/mod_sev_oathtaker_oathbringer_coordination");
});
