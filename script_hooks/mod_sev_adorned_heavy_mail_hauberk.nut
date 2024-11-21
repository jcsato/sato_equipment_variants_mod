::mods_hookNewObject("items/armor/adorned_heavy_mail_hauberk", function(ahmh) {
	local variants = [ 109, 224, 225 ];
	::mods_addField(ahmh, "adorned_heavy_mail_hauberk", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
	ahmh.updateVariant();
});
