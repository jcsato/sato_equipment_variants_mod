::mods_queue("sato_equipment_variants", "", function() {
	::mods_hookNewObject("items/helmets/full_helm", function(fh) {
		::mods_addMember(fh, "full_helm", "onPaint", function( _color ) {
			if (m.Variant >= 300 && m.Variant <= 305) {
				switch(_color) {
					case Const.Items.Paint.None:
						m.Variant = 300;
						break;

					case Const.Items.Paint.WhiteBlue:
						m.Variant = 301;
						break;

					case Const.Items.Paint.WhiteGreenYellow:
						m.Variant = 302;
						break;

					case Const.Items.Paint.OrangeRed:
						m.Variant = 303;
						break;

					case Const.Items.Paint.Black:
						m.Variant = 304;
						break;

					case Const.Items.Paint.Red:
						m.Variant = 305;
						break;
				}
			} else if (m.Variant >= 306 && m.Variant <= 311) {
				switch(_color) {
					case Const.Items.Paint.None:
						m.Variant = 306;
						break;

					case Const.Items.Paint.WhiteBlue:
						m.Variant = 307;
						break;

					case Const.Items.Paint.WhiteGreenYellow:
						m.Variant = 308;
						break;

					case Const.Items.Paint.OrangeRed:
						m.Variant = 309;
						break;

					case Const.Items.Paint.Black:
						m.Variant = 310;
						break;

					case Const.Items.Paint.Red:
						m.Variant = 311;
						break;
				}
			} else {
				switch(_color) {
					case Const.Items.Paint.None:
						m.Variant = 4;
						break;

					case Const.Items.Paint.WhiteBlue:
						m.Variant = 148;
						break;

					case Const.Items.Paint.WhiteGreenYellow:
						m.Variant = 149;
						break;

					case Const.Items.Paint.OrangeRed:
						m.Variant = 150;
						break;

					case Const.Items.Paint.Black:
						m.Variant = 151;
						break;

					case Const.Items.Paint.Red:
						m.Variant = 183;
						break;
				}
			}

			updateVariant();
			updateAppearance();
		});

		/*
		* 4   -> Default
		* 148 -> White-Blue
		* 149 -> Green-White
		* 150 -> Red-Black
		* 151 -> Black
		* 183 -> Red
		* 
		* 300 -> Big hood Default
		* 301 -> Big hood Blue
		* 302 -> Big hood Green
		* 303 -> Big hood Red-Black
		* 304 -> Big hood Black
		* 305 -> Big hood Red
		* 
		* 306 -> Hood Default
		* 307 -> Hood Blue
		* 308 -> Hood Green
		* 309 -> Hood Red-Black
		* 310 -> Hood Black
		* 311 -> Hood Red
		*/
		local variants = [ 4, 4, 4, 4, 4, 4, 4, 148, 149, 150, 151, 183, 300, 300, 300, 300, 300, 300, 300, 300, 301, 302, 303, 304, 305, 306, 306, 306, 306, 306, 306, 306, 306, 307, 308, 309, 310, 311 ];
		::mods_addField(fh, "full_helm", "Variant",  variants[Math.rand(0, variants.len() - 1)]);
		fh.updateVariant();
	});

	::mods_hookExactClass("entity/tactical/humans/knight", function(k) {
		local assignRandomEquipment = ::mods_getMember(k, "assignRandomEquipment");

		k.assignRandomEquipment = function() {
			assignRandomEquipment();

			local helmet = m.Items.getItemAtSlot(Const.ItemSlot.Head);
			if (helmet.getID() == "armor.head.full_helm" && helmet.getVariant() >= 300) {
				local defaultVariants = [ 4, 4, 4, 4, 4, 4, 4, 148, 149, 150, 151, 183 ];
				helmet.setVariant(defaultVariants[Math.rand(0, defaultVariants.len() - 1)])
				helmet.updateVariant();
				helmet.updateAppearance();
			}
		}
	});
});
