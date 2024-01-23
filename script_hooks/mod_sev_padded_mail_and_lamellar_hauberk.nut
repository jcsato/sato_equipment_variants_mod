::mods_hookNewObject("items/armor/oriental/padded_mail_and_lamellar_hauberk", function(pmalh) {
	local variants = [ 7, 42, 43 ];
	::mods_addField(pmalh, "padded_mail_and_lamellar_hauberk", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
	pmalh.updateVariant();
});

::mods_hookExactClass("entity/tactical/humans/officer", function(o) {
	local assignRandomEquipment = ::mods_getMember(o, "assignRandomEquipment");

	o.assignRandomEquipment = function() {
		assignRandomEquipment();

		if (!Tactical.State.isScenarioMode()) {
			local banner = World.FactionManager.getFaction(getFaction()).getBanner();

			local armor = m.Items.getItemAtSlot(Const.ItemSlot.Body);
			if (armor.getID() == "armor.body.padded_mail_and_lamellar_hauberk") {
				if (banner == 12) {
					// green
					armor.setVariant(42);
					armor.updateVariant();
					armor.updateAppearance();
				} else if (banner == 13) {
					// purple
					armor.setVariant(43);
					armor.updateVariant();
					armor.updateAppearance();
				} else if (banner == 14) {
					// red
					armor.setVariant(7);
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
		if (armor.getID() == "armor.body.padded_mail_and_lamellar_hauberk") {
			if (banner == 12) {
				// green
				armor.setVariant(42);
				armor.updateVariant();
				armor.updateAppearance();
			} else if (banner == 13) {
				// purple
				armor.setVariant(43);
				armor.updateVariant();
				armor.updateAppearance();
			} else if (banner == 14) {
				// red
				armor.setVariant(7);
				armor.updateVariant();
				armor.updateAppearance();
			}
		}
	}
});
