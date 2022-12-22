::mods_queue("sato_equipment_variants", "", function() {
	::mods_hookNewObject("items/armor/coat_of_scales", function(cos) {
		local variants = [ 38, 38, 38, 220 ];
		::mods_addField(cos, "coat_of_scales", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
		cos.updateVariant();
	});

	::mods_hookExactClass("entity/tactical/humans/knight", function(k) {
		local assignRandomEquipment = ::mods_getMember(k, "assignRandomEquipment");

		k.assignRandomEquipment = function() {
			assignRandomEquipment();

            local armor = m.Items.getItemAtSlot(Const.ItemSlot.Body);
            if (armor.getID() == "armor.body.coat_of_scales" && armor.getVariant() != 38) {
                armor.setVariant(38);
                armor.updateVariant();
                armor.updateAppearance();
			}
		}
	});
});
