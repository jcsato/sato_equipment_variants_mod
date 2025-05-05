try {
	!!::SatoEquipment;
} catch(exception) {
	::SatoEquipment <- {};
}

if (!("Helpers" in SatoEquipment))
	::SatoEquipment.Helpers <- {};

::SatoEquipment.Helpers.Oathtakers <- {
	// 0 -> default, 1 -> Red-Blue, 2 -> Turquoise-Gold, 3 -> White-Blue
	getColorSchemeFromHelmet = function(items) {
		local colorScheme = 0;
		local helmet = items.getItemAtSlot(Const.ItemSlot.Head);

		if (helmet != null) {
			local constants = ::SatoEquipment.Constants.Oathtakers;
			local colors = constants.HelmetColors[helmet.getID()];

			switch(helmet.getID()) {
				case "armor.head.heavy_mail_coif":
				case "armor.head.adorned_closed_flat_top_with_mail":
				case "armor.head.adorned_full_helm":
				case "armor.head.decorated_great_helm":
					if (helmet.getVariant() == colors.RedBlue)
						colorScheme = constants.ColorSchemes.RedBlue;
					else if (helmet.getVariant() == colors.TurquoiseGold)
						colorScheme = constants.ColorSchemes.TurquoiseGold;
					else if (helmet.getVariant() == colors.WhiteBlue)
						colorScheme = constants.ColorSchemes.WhiteBlue;
			}
		}

		return colorScheme;
	}
	getColorSchemeFromArmor = function(items) {
		local colorScheme = 0;
		local armor = items.getItemAtSlot(Const.ItemSlot.Body);

		if (armor != null) {
			local constants = ::SatoEquipment.Constants.Oathtakers;
			local colors = constants.ArmorColors[armor.getID()];

			switch(armor.getID()) {
				case "armor.body.adorned_mail_shirt":
					colorScheme = constants.ColorSchemes.WhiteBlue;
					break;

				case "armor.body.adorned_warriors_armor":
				case "armor.body.adorned_heavy_mail_hauberk":
					if (armor.getVariant() == colors.RedBlue)
						colorScheme = constants.ColorSchemes.RedBlue;
					else if (armor.getVariant() == colors.TurquoiseGold)
						colorScheme = constants.ColorSchemes.TurquoiseGold;
					else if (armor.getVariant() == colors.WhiteBlue)
						colorScheme = constants.ColorSchemes.WhiteBlue;
			}
		}

		return colorScheme;
	}
	setEquipmentColorScheme = function(items, colorScheme) {
		::SatoEquipment.Helpers.Oathtakers.setHelmetColorScheme(items, colorScheme);
		::SatoEquipment.Helpers.Oathtakers.setArmorColorScheme(items, colorScheme);
		::SatoEquipment.Helpers.Oathtakers.setShieldColorScheme(items, colorScheme);
	}
	setHelmetColorScheme = function(items, colorScheme) {
		local helmet = items.getItemAtSlot(Const.ItemSlot.Head);

		if (helmet == null)
			return;

		local constants = ::SatoEquipment.Constants.Oathtakers;
		local colors = constants.HelmetColors[helmet.getID()];

		switch (helmet.getID()) {
			case "armor.head.heavy_mail_coif":
			case "armor.head.adorned_closed_flat_top_with_mail":
			case "armor.head.adorned_full_helm":
			case "armor.head.decorated_great_helm":
				if (colorScheme == constants.ColorSchemes.RedBlue) {
					helmet.setVariant(colors.RedBlue);
					helmet.updateAppearance();
				} else if (colorScheme == constants.ColorSchemes.TurquoiseGold) {
					helmet.setVariant(colors.TurquoiseGold);
					helmet.updateAppearance();
				} else if (colorScheme == constants.ColorSchemes.WhiteBlue) {
					helmet.setVariant(colors.WhiteBlue);
					helmet.updateAppearance();
				}
		}
	}
	setArmorColorScheme = function(items, colorScheme) {
		local armor = items.getItemAtSlot(Const.ItemSlot.Body);

		if (armor == null)
			return;

		local constants = ::SatoEquipment.Constants.Oathtakers;
		local colors = constants.ArmorColors[armor.getID()];

		switch (armor.getID()) {
			case "armor.body.adorned_mail_shirt":
			case "armor.body.adorned_warriors_armor":
			case "armor.body.adorned_heavy_mail_hauberk":
				if (colorScheme == constants.ColorSchemes.RedBlue) {
					armor.setVariant(colors.RedBlue);
					armor.updateAppearance();
				} else if (colorScheme == constants.ColorSchemes.TurquoiseGold) {
					armor.setVariant(colors.TurquoiseGold);
					armor.updateAppearance();
				} else if (colorScheme == constants.ColorSchemes.WhiteBlue) {
					armor.setVariant(colors.WhiteBlue);
					armor.updateAppearance();
				}
		}
	}
	setShieldColorScheme = function(items, colorScheme) {
		local shield = items.getItemAtSlot(Const.ItemSlot.Offhand);

		if (shield != null && shield.getID() == "shield.wooden_shield") {
			if (colorScheme == ::SatoEquipment.Constants.Oathtakers.ColorSchemes.RedBlue)
				shield.setVariant([5, 6][Math.rand(0, 1)]);
			else if (colorScheme == ::SatoEquipment.Constants.Oathtakers.ColorSchemes.TurquoiseGold)
				shield.setVariant([0, 7][Math.rand(0, 1)]);
			else if (colorScheme == ::SatoEquipment.Constants.Oathtakers.ColorSchemes.WhiteBlue)
				shield.setVariant([0, 2, 7, 8][Math.rand(0, 3)]);

			shield.updateVariant();
			shield.updateAppearance();
		} else if (shield != null && shield.getID() == "shield.heater_shield") {
			if (colorScheme == ::SatoEquipment.Constants.Oathtakers.ColorSchemes.RedBlue)
				shield.setVariant([3, 10, 11][Math.rand(0, 2)]);
			else if (colorScheme == ::SatoEquipment.Constants.Oathtakers.ColorSchemes.TurquoiseGold)
				shield.setVariant([6, 7][Math.rand(0, 1)]);
			else if (colorScheme == ::SatoEquipment.Constants.Oathtakers.ColorSchemes.WhiteBlue)
				shield.setVariant([1, 2, 7, 8][Math.rand(0, 3)]);

			shield.updateVariant();
			shield.updateAppearance();
		} else if (shield != null && shield.getID() == "shield.kite_shield") {
			if (colorScheme == ::SatoEquipment.Constants.Oathtakers.ColorSchemes.RedBlue)
				shield.setVariant([4, 8][Math.rand(0, 1)]);
			else if (colorScheme == ::SatoEquipment.Constants.Oathtakers.ColorSchemes.TurquoiseGold)
				shield.setVariant([0, 4, 46][Math.rand(0, 1)]);
			else if (colorScheme == ::SatoEquipment.Constants.Oathtakers.ColorSchemes.WhiteBlue)
				shield.setVariant([0, 2, 3, 5][Math.rand(0, 3)]);

			shield.updateVariant();
			shield.updateAppearance();
		}
	}
}
