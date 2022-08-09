::mods_queue("sato_equipment_variants", "", function() {
	::mods_hookNewObject("items/armor/oriental/vizier_gear", function(vg) {
		local variants = [ 1, 2, 5, 6 ];
		::mods_addField(vg, "vizier_gear", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
		vg.updateVariant();
	});

	::mods_hookNewObject("items/helmets/oriental/vizier_headgear", function(vh) {
		local variants = [ 1, 2, 3, 4, 5 ];
		::mods_addField(vh, "vizier_headgear", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
		vh.updateVariant();
	});

	::mods_hookExactClass("entity/tactical/humans/vizier", function(v) {
		local assignRandomEquipment = ::mods_getMember(v, "assignRandomEquipment");

		v.assignRandomEquipment = function() {
			assignRandomEquipment();

			local banner = World.FactionManager.getFaction(getFaction()).getBanner();

			local helmet = m.Items.getItemAtSlot(Const.ItemSlot.Head);
			if (helmet != null && helmet.getID() == "armor.head.vizier_headgear" && !(helmet.getVariant() == 2 || helmet.getVariant() == 3)) {
				if (banner == 12) {
					// green
					helmet.setVariant(4);
					helmet.updateVariant();
					helmet.updateAppearance();
				} else if (banner == 13) {
					// purple
					helmet.setVariant(5);
					helmet.updateVariant();
					helmet.updateAppearance();
				} else if (banner == 14) {
					// red
					helmet.setVariant(1);
					helmet.updateVariant();
					helmet.updateAppearance();
				}
			}

			// We can just check armor here, and not the surcoat sprite, because the new colors only apply to the "armor" sprites
			local armor = m.Items.getItemAtSlot(Const.ItemSlot.Body);
			if (armor.getID() == "armor.body.vizier_gear" && !(armor.getVariant() == 2 || armor.getVariant() == 3 || armor.getVariant() == 4)) {
				if (banner == 12) {
					// green
					armor.setVariant(5);
					armor.updateVariant();
					armor.updateAppearance();
				} else if (banner == 13) {
					// purple
					armor.setVariant(6);
					armor.updateVariant();
					armor.updateAppearance();
				} else if (banner == 14) {
					// red
					armor.setVariant(1);
					armor.updateVariant();
					armor.updateAppearance();
				}
			}
		}
	});
});
