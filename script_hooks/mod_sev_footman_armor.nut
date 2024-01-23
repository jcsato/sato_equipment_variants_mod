::mods_hookNewObject("items/armor/footman_armor", function(fa) {
	local variants = [ 84, 84, 84, 84, 84, 84, 205, 206, 206, 206 ];
	::mods_addField(fa, "footman_armor", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
	fa.updateVariant();
});
