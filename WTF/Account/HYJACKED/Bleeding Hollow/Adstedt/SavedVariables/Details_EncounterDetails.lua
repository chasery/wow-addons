
EncounterDetailsDB = {
	["emotes"] = {
		{
			["boss"] = "Majordomo Executus",
		}, -- [1]
		{
			["boss"] = "Majordomo Executus",
		}, -- [2]
		{
			{
				0.170999999972992, -- [1]
				"Reckless mortals! None may challenge the Sons of the Living flame!", -- [2]
				"Majordomo Executus", -- [3]
				7, -- [4]
			}, -- [1]
			{
				6.11300000001211, -- [1]
				"You think you've won already? Perhaps you'll need another lesson in pain!", -- [2]
				"Majordomo Executus", -- [3]
				7, -- [4]
			}, -- [2]
			["boss"] = "Majordomo Executus",
		}, -- [3]
	},
	["encounter_spells"] = {
		[19516] = {
			["school"] = 1,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Garr",
		},
		[19497] = {
			["school"] = 4,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
			},
			["source"] = "Firesworn",
		},
		[19785] = {
			["school"] = 1,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Sulfuron Harbinger",
		},
		[20620] = {
			["school"] = 32,
			["type"] = "BUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_HEAL"] = true,
			},
			["source"] = "Majordomo Executus",
		},
		[20564] = {
			["school"] = 4,
			["type"] = "DEBUFF",
			["token"] = {
				["SPELL_AURA_APPLIED"] = true,
				["SPELL_DAMAGE"] = true,
				["SPELL_PERIODIC_DAMAGE"] = true,
			},
			["source"] = "Ragnaros",
		},
		[21077] = {
			["school"] = 32,
			["token"] = {
				["SPELL_CAST_SUCCESS"] = true,
				["SPELL_CAST_START"] = true,
			},
			["source"] = "Flamewaker Healer",
		},
	},
}
