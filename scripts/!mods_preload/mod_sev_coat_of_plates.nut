::mods_queue("sato_equipment_variants", "", function() {
	::mods_hookNewObject("items/armor/coat_of_plates", function(cop) {
		local variants = [ 38, 38, 38, 209 ];
		::mods_addField(cop, "coat_of_plates", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
		cop.updateVariant();
	});

	::mods_hookExactClass("entity/tactical/humans/knight", function(k) {
		local assignRandomEquipment = ::mods_getMember(k, "assignRandomEquipment");

		k.assignRandomEquipment = function() {
			assignRandomEquipment();

            local armor = m.Items.getItemAtSlot(Const.ItemSlot.Body);
            if (armor.getID() == "armor.body.coat_of_plates" && armor.getVariant() != 37) {
                armor.setVariant(37);
                armor.updateVariant();
                armor.updateAppearance();
			}
		}
	});
});
