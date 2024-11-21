::mods_hookExactClass("skills/backgrounds/paladin_background", function(pb) {
	local onAddEquipment = ::mods_getMember(pb, "onAddEquipment");

	pb.onAddEquipment = function() {
		onAddEquipment();

		local items = getContainer().getActor().getItems();
		local helmet = items.getItemAtSlot(Const.ItemSlot.Head);
		local armor = items.getItemAtSlot(Const.ItemSlot.Body);

		// 0: default
		// 1: red-blue
		// 2: turquoise-gold
		// 3: white-blue
		local colorScheme = 0;

		switch(helmet.getID()) {
			case "armor.head.heavy_mail_coif":
				if (helmet.getVariant() == 237)
					colorScheme = 3;
				else if (helmet.getVariant() == 321)
					colorScheme = 1;
				else if (helmet.getVariant() == 322)
					colorScheme = 2;
				break;

			case "armor.head.adorned_closed_flat_top_with_mail":
				if (helmet.getVariant() == 238)
					colorScheme = 2;
				else if (helmet.getVariant() == 319)
					colorScheme = 1;
				else if (helmet.getVariant() == 320)
					colorScheme = 3;
				break;

			case "armor.head.adorned_full_helm":
				if (helmet.getVariant() == 239)
					colorScheme = 1;
				else if (helmet.getVariant() == 317)
					colorScheme = 2;
				else if (helmet.getVariant() == 318)
					colorScheme = 3;
				break;

			// Additional equipment helmet
			case "armor.head.decorated_great_helm":
				if (helmet.getVariant() == 34)
					colorScheme = 1;
				else if (helmet.getVariant() == 35)
					colorScheme = 2;
				else if (helmet.getVariant() == 36)
					colorScheme = 3;
		}

		if (armor.getID() == "armor.body.adorned_warriors_armor") {
			if (colorScheme == 1)
				armor.setVariant(226);
			if (colorScheme == 2)
				armor.setVariant(108);
			if (colorScheme == 3)
				armor.setVariant(227);

			armor.updateVariant();
			armor.updateAppearance();
		} else if (armor.getID() == "armor.body.adorned_heavy_mail_hauberk") {
			if (colorScheme == 1)
				armor.setVariant(109);
			if (colorScheme == 2)
				armor.setVariant(224);
			if (colorScheme == 3)
				armor.setVariant(225);

			armor.updateVariant();
			armor.updateAppearance();
		}

		local shield = items.getItemAtSlot(Const.ItemSlot.Offhand);

		if (shield != null && shield.getID() == "shield.wooden_shield") {
			if (colorScheme == 1)
				shield.setVariant([5, 6][Math.rand(0, 1)]);
			if (colorScheme == 2)
				shield.setVariant([0, 7][Math.rand(0, 1)]);
			if (colorScheme == 3)
				shield.setVariant([0, 2, 7, 8][Math.rand(0, 3)]);

			shield.updateVariant();
			shield.updateAppearance();
		}
		else if (shield != null && shield.getID() == "shield.heater_shield") {
			if (colorScheme == 1)
				shield.setVariant([3, 10, 11][Math.rand(0, 2)]);
			if (colorScheme == 2)
				shield.setVariant([6, 7][Math.rand(0, 1)]);
			if (colorScheme == 3)
				shield.setVariant([1, 2, 7, 8][Math.rand(0, 3)]);

			shield.updateVariant();
			shield.updateAppearance();
		}
		else if (shield != null && shield.getID() == "shield.kite_shield") {
			if (colorScheme == 1)
				shield.setVariant([4, 8][Math.rand(0, 1)]);
			if (colorScheme == 2)
				shield.setVariant([0, 4][Math.rand(0, 1)]);
			if (colorScheme == 3)
				shield.setVariant([0, 2, 3, 5][Math.rand(0, 3)]);

			shield.updateVariant();
			shield.updateAppearance();
		}
	}
});

::mods_hookExactClass("entity/tactical/humans/oathbringer", function(o) {
	local assignRandomEquipment = ::mods_getMember(o, "assignRandomEquipment");

	o.assignRandomEquipment = function() {
		assignRandomEquipment();

		// 0: default
		// 1: red-blue
		// 2: turquoise-gold
		// 3: white-blue
		local colorScheme = 0;

		local helmet = m.Items.getItemAtSlot(Const.ItemSlot.Head);
		switch(helmet.getID()) {
			case "armor.head.full_helm":
				// red
				if (helmet.getVariant() == 183 || helmet.getVariant() == 305 || helmet.getVariant() == 309)
					colorScheme = 1;
				// blue-white & black
				if (helmet.getVariant() == 140 || helmet.getVariant() == 301 || helmet.getVariant() == 307 || helmet.getVariant() == 151 || helmet.getVariant() == 304 || helmet.getVariant() == 310)
					colorScheme = 3;
				break;

			case "armor.head.adorned_closed_flat_top_with_mail":
				if (helmet.getVariant() == 238)
					colorScheme = 2;
				else if (helmet.getVariant() == 319)
					colorScheme = 1;
				else if (helmet.getVariant() == 320)
					colorScheme = 3;
				break;

			case "armor.head.adorned_full_helm":
				if (helmet.getVariant() == 239)
					colorScheme = 1;
				else if (helmet.getVariant() == 317)
					colorScheme = 2;
				else if (helmet.getVariant() == 318)
					colorScheme = 3;
				break;

			// In vanilla Oathbringers can't spawn with light helms, this is just here for completeness
			case "armor.head.heavy_mail_coif":
				if (helmet.getVariant() == 237)
					colorScheme = 3;
				else if (helmet.getVariant() == 321)
					colorScheme = 1;
				else if (helmet.getVariant() == 322)
					colorScheme = 2;

				break;

			// Additional equipment helmet
			case "armor.head.decorated_great_helm":
				if (helmet.getVariant() == 34)
					colorScheme = 1;
				else if (helmet.getVariant() == 35)
					colorScheme = 2;
				else if (helmet.getVariant() == 36)
					colorScheme = 3;
		}

		local armor = m.Items.getItemAtSlot(Const.ItemSlot.Body);
		// In vanilla Oathbringers can't spawn with medium armor, this is just here for completeness
		if (armor.getID() == "armor.body.adorned_warriors_armor") {
			if (colorScheme == 1)
				armor.setVariant(226);
			if (colorScheme == 2)
				armor.setVariant(108);
			if (colorScheme == 3)
				armor.setVariant(227);

			armor.updateVariant();
			armor.updateAppearance();
		} else if (armor.getID() == "armor.body.adorned_heavy_mail_hauberk") {
			if (colorScheme == 1)
				armor.setVariant(109);
			if (colorScheme == 2)
				armor.setVariant(224);
			if (colorScheme == 3)
				armor.setVariant(225);

			armor.updateVariant();
			armor.updateAppearance();
		}
	}
});
