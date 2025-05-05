try {
	!!::SatoEquipment;
} catch(exception) {
	::SatoEquipment <- {};
}

if (!("Constants" in SatoEquipment))
	::SatoEquipment.Constants <- {};

::SatoEquipment.Constants.Oathtakers <- {
	ColorSchemes = {
		RedBlue = 0
		TurquoiseGold = 1
		WhiteBlue = 2
	}
	HelmetColors = {
		["armor.head.heavy_mail_coif"] = {
			RedBlue = 321
			TurquoiseGold = 322
			WhiteBlue = 237
		},
		["armor.head.adorned_closed_flat_top_with_mail"] = {
			RedBlue = 319
			TurquoiseGold = 238
			WhiteBlue = 320
		},
		["armor.head.adorned_full_helm"] = {
			RedBlue = 239
			TurquoiseGold = 317
			WhiteBlue = 318
		},
		["armor.head.decorated_great_helm"] = {
			RedBlue = 34
			TurquoiseGold = 35
			WhiteBlue = 36
		}
	}
	ArmorColors = {
		// 107 is the default White-Blue color scheme; there are no other variants
		["armor.body.adorned_mail_shirt"] = {
			RedBlue = 107
			TurquoiseGold = 107
			WhiteBlue = 107
		},
		["armor.body.adorned_warriors_armor"] = {
			RedBlue = 226
			TurquoiseGold = 108
			WhiteBlue = 227
		},
		["armor.body.adorned_heavy_mail_hauberk"] = {
			RedBlue = 109
			TurquoiseGold = 224
			WhiteBlue = 225
		}
	}
}
