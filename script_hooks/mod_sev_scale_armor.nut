::mods_hookNewObject("items/armor/scale_armor", function(sa) {
	local variants = [ 33, 33, 207 ];
	::mods_addField(sa, "scale_armor", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
	sa.updateVariant();
});
