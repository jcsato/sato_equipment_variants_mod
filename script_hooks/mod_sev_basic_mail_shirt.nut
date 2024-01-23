::mods_hookNewObject("items/armor/basic_mail_shirt", function(bms) {
	local variants = [ 26, 26, 222, 222, 223 ];
	::mods_addField(bms, "basic_mail_shirt", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
	bms.updateVariant();
});
