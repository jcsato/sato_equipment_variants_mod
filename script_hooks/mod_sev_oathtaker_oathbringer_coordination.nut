::mods_hookExactClass("skills/backgrounds/paladin_background", function(pb) {
	local onAddEquipment = ::mods_getMember(pb, "onAddEquipment");

	pb.onAddEquipment = function() {
		onAddEquipment();

		local colorScheme = ::SatoEquipment.Helpers.Oathtakers.getColorSchemeFromArmor(getContainer().getActor().getItems());
		::SatoEquipment.Helpers.Oathtakers.setEquipmentColorScheme(getContainer().getActor().getItems(), colorScheme);
	}
});

::mods_hookExactClass("entity/tactical/humans/oathbringer", function(o) {
	local assignRandomEquipment = ::mods_getMember(o, "assignRandomEquipment");

	o.assignRandomEquipment = function() {
		assignRandomEquipment();

		local colorScheme = ::SatoEquipment.Helpers.Oathtakers.getColorSchemeFromArmor(m.Items);
		::SatoEquipment.Helpers.Oathtakers.setEquipmentColorScheme(m.Items, colorScheme);
	}
});
