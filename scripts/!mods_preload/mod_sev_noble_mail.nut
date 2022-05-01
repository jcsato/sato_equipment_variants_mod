::mods_queue("sato_equipment_variants", "", function() {
	::mods_hookNewObject("items/armor/noble_mail_armor", function(nma) {
		/*
		 * 87	-> Default (Red-White)
		 * 210	-> White
		 * 211	-> Black
		 * 212	-> Blue-White
		 * 213	-> Blue-Green
		 * 214	-> Yellow-Red
		 * 215	-> Blue-Red
		 * 216	-> Red
		 * 217	-> Yellow-Green
		 * 218	-> White-Green
		 * 219	-> Blue
		 */
		local variants = [ 87, 87, 87, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219 ];
		::mods_addField(nma, "noble_mail_armor", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
		nma.updateVariant();
	});
});
