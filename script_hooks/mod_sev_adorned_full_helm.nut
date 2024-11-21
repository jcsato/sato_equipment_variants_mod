::mods_hookNewObject("items/helmets/adorned_full_helm", function(afh) {
	local variants = [ 239, 317, 318 ];
	::mods_addField(afh, "adorned_full_helm", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
	afh.updateVariant();
});
