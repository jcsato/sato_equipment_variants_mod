::mods_hookNewObject("items/armor/oriental/mail_and_lamellar_plating", function(malp) {
	local variants = [ 2, 40, 41 ];
	::mods_addField(malp, "mail_and_lamellar_plating", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
	malp.updateVariant();
});

::mods_hookExactClass("entity/tactical/humans/officer", function(o) {
	local assignRandomEquipment = ::mods_getMember(o, "assignRandomEquipment");

	o.assignRandomEquipment = function() {
		assignRandomEquipment();

		if (!Tactical.State.isScenarioMode()) {
			local banner = World.FactionManager.getFaction(getFaction()).getBanner();

			local armor = m.Items.getItemAtSlot(Const.ItemSlot.Body);
			if (armor.getID() == "armor.body.mail_and_lamellar_plating") {
				if (banner == 12) {
					// green
					armor.setVariant(40);
					armor.updateVariant();
					armor.updateAppearance();
				} else if (banner == 13) {
					// purple
					armor.setVariant(41);
					armor.updateVariant();
					armor.updateAppearance();
				} else if (banner == 14) {
					// red
					armor.setVariant(2);
					armor.updateVariant();
					armor.updateAppearance();
				}
			}
		}
	}
});

::mods_hookExactClass("entity/tactical/humans/vizier", function(o) {
	local assignRandomEquipment = ::mods_getMember(o, "assignRandomEquipment");

	o.assignRandomEquipment = function() {
		assignRandomEquipment();

		local banner = World.FactionManager.getFaction(getFaction()).getBanner();

		local armor = m.Items.getItemAtSlot(Const.ItemSlot.Body);
		if (armor.getID() == "armor.body.mail_and_lamellar_plating") {
			if (banner == 12) {
				// green
				armor.setVariant(40);
				armor.updateVariant();
				armor.updateAppearance();
			} else if (banner == 13) {
				// purple
				armor.setVariant(41);
				armor.updateVariant();
				armor.updateAppearance();
			} else if (banner == 14) {
				// red
				armor.setVariant(2);
				armor.updateVariant();
				armor.updateAppearance();
			}
		}
	}
});
