::mods_hookNewObject("items/shields/oriental/southern_light_shield", function(sls) {
	local variants = [ 1, 2, 3, 4, 5 ];
	::mods_addField(sls, "southern_light_shield", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
	sls.updateVariant();
});

::mods_hookExactClass("entity/tactical/humans/conscript", function(c) {
	local assignRandomEquipment = ::mods_getMember(c, "assignRandomEquipment");

	c.assignRandomEquipment = function() {
		assignRandomEquipment();

		if (!Tactical.State.isScenarioMode()) {
			local banner = World.FactionManager.getFaction(getFaction()).getBanner();

			local shield = m.Items.getItemAtSlot(Const.ItemSlot.Offhand);
			if (shield != null && shield.getID() == "shield.southern_light_shield" && !(shield.getVariant() == 2 || shield.getVariant() == 3)) {
				if (banner == 12) {
					// green
					shield.setVariant(4);
					shield.updateVariant();
					shield.updateAppearance();
				} else if (banner == 13) {
					// purple
					shield.setVariant(5);
					shield.updateVariant();
					shield.updateAppearance();
				} else if (banner == 14) {
					// red
					shield.setVariant(1);
					shield.updateVariant();
					shield.updateAppearance();
				}
			}
		}
	}
});
