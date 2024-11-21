::mods_hookNewObject("items/helmets/heavy_mail_coif", function(hmc) {
	local variants = [ 237, 321, 322 ];
	::mods_addField(hmc, "heavy_mail_coif", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
	hmc.updateVariant();
});
