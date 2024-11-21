::mods_hookNewObject("items/helmets/adorned_closed_flat_top_with_mail", function(acftwm) {
	local variants = [ 238, 319, 320 ];
	::mods_addField(acftwm, "adorned_closed_flat_top_with_mail", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
	acftwm.updateVariant();
});
