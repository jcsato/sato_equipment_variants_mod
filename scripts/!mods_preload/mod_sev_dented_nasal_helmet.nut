::mods_queue("sato_equipment_variants", "", function() {
	::mods_hookNewObject("items/helmets/dented_nasal_helmet", function(dnh) {
		// dented_nasal_helmet.updateVariant overwrites helmet's, hardcoding the variant
		// This recreates the default helmet updateVariant
		::mods_addMember(dnh, "dented_nasal_helmet", "updateVariant", function() {
			local variant = m.Variant > 9 ? m.Variant : "0" + m.Variant;
			m.Sprite = "bust_" + m.VariantString + "_" + variant;
			m.SpriteDamaged = "bust_" + m.VariantString + "_" + variant + "_damaged";
			m.SpriteCorpse = "bust_" + m.VariantString + "_" + variant + "_dead";
			m.IconLarge = "";
			m.Icon = "helmets/inventory_" + m.VariantString + "_" + variant + ".png";
		});

		::mods_addMember(dnh, "dented_nasal_helmet", "onPaint", function( _color ) {
			switch(_color) {
				case Const.Items.Paint.None:
					m.Variant = 0;
					break;

				case Const.Items.Paint.WhiteBlue:
					m.Variant = 312;
					break;

				case Const.Items.Paint.WhiteGreenYellow:
					m.Variant = 313;
					break;

				case Const.Items.Paint.OrangeRed:
					m.Variant = 314;
					break;

				case Const.Items.Paint.Black:
					m.Variant = 315;
					break;

				case Const.Items.Paint.Red:
					m.Variant = 316;
					break;
			}

			updateVariant();
			updateAppearance();
		});

		local variants = [ 30, 30, 30, 30, 30, 30, 30, 312, 313, 314, 315, 316 ];
		::mods_addField(dnh, "dented_nasal_helmet", "Variant", variants[Math.rand(0, variants.len() - 1)]);
		dnh.updateVariant();
	});
});
