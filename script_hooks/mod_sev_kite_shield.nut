::mods_hookNewObject("items/shields/kite_shield", function(ks) {
	local variants = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 46 ];
	::mods_addField(ks, "kite_shield", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
	ks.updateVariant();
});
