::mods_hookNewObject("items/armor/adorned_warriors_armor", function(awa) {
	local variants = [ 108, 226, 227 ];
	::mods_addField(awa, "adorned_warriors_armor", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
	awa.updateVariant();
});
