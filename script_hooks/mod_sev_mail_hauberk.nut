::mods_hookNewObject("items/armor/mail_hauberk", function(mh) {
	local variants = [ 28, 29, 30, 31, 32, 40, 41, 201, 203 ];
	::mods_addField(mh, "mail_hauberk", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
	mh.updateVariant();
});
