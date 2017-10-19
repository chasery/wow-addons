
WeakAurasSaved = {
	["dynamicIconCache"] = {
		["Time Warp"] = {
			[80353] = 458224,
		},
		["Sephuz's Secret"] = {
			[208052] = 645145,
		},
		["Vampiric Embrace"] = {
			[15286] = 136230,
		},
		["Twist of Fate"] = {
			[123254] = 237566,
		},
		["Mind Quickening"] = {
			[240673] = 132886,
		},
		["Drums of Fury"] = {
			[178207] = 133841,
		},
		["Potion of Prolonged Power"] = {
			[229206] = 967532,
		},
		["Concordance of the Legionfall"] = {
			[242586] = 1585421,
		},
		["Mark of the Claw"] = {
			[190909] = 625999,
		},
		["Voidform"] = {
			[194249] = 1386550,
		},
		["Heroism"] = {
			[32182] = 132313,
		},
	},
	["login_squelch_time"] = 10,
	["displays"] = {
		["Void Tendril Timer"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 13,
			["disjunctive"] = "all",
			["displayText"] = "%c",
			["customText"] = "-----------------------------------------------------------------\n--- Spinalcrack's Void Tendril Counter -- www.howtopriest.com ---\n-----------------------------------------------------------------\n\nfunction()\n    if glb_wa_void_T_timer > 0 then\n        local time = GetTime()\n        local timer = 10 - ((time) - (glb_wa_void_T_timer))\n        if timer >= 0 then\n            \n            return string.format(\"%.1f\", timer)\n        else\n            glb_wa_void_T_timer = 0\n            glb_wa_void_T_counter = 0\n            \n        end\n        \n    else\n        glb_wa_void_T_timer = 0\n        glb_wa_void_T_counter = 0\n        \n        return \"\"\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -11.999938964844,
			["regionType"] = "text",
			["untrigger"] = {
				["unit"] = "player",
				["use_unit"] = true,
			},
			["xOffset"] = 0,
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "-----------------------------------------------------------------\n--- Spinalcrack's Void Tendril Counter -- www.howtopriest.com ---\n-----------------------------------------------------------------\n\nglb_wa_void_T_timer = 0",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "-----------------------------------------------------------------\n--- Spinalcrack's Void Tendril Counter -- www.howtopriest.com ---\n-----------------------------------------------------------------\n\nglb_wa_void_T_timer = 0\nglb_wa_void_T_counter = 0\nglb_wa_void_T_table = {}",
					["do_custom"] = false,
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["height"] = 13.3332872390747,
			["id"] = "Void Tendril Timer",
			["justify"] = "CENTER",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "shrink",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "shrink",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["use_alwaystrue"] = true,
				["unevent"] = "auto",
				["event"] = "Conditions",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["spellIds"] = {
				},
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["width"] = 10.6666584014893,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["anchorPoint"] = "CENTER",
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["selfPoint"] = "BOTTOM",
			["init_started"] = 1,
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Priest - Shadow: Void Tendril Tracker",
		},
		["Void Tendril Counter"] = {
			["glow"] = false,
			["text1FontSize"] = 13,
			["cooldownTextEnabled"] = true,
			["customText"] = "-----------------------------------------------------------------\n--- Spinalcrack's Void Tendril Counter -- www.howtopriest.com ---\n-----------------------------------------------------------------\n\nfunction()\n    local time = GetTime()\n    \n    i = 0\n    repeat\n        i = i + 1\n        if glb_wa_void_T_table[i] and glb_wa_void_T_table[i][\"spawnTime\"] then\n            if time - glb_wa_void_T_table[i][\"spawnTime\"] >=10 then\n                glb_wa_void_T_counter = glb_wa_void_T_counter - 1\n                glb_wa_void_T_table[i][\"spawnTime\"] = nil\n                glb_wa_void_T_table[i][\"guid\"] = nil\n                break\n            end\n            \n            \n        end\n        \n        \n        \n    until i == 10\n    \n    if glb_wa_void_T_counter > 0 then \n        return glb_wa_void_T_counter \n    else \n        return \"\" \n    end\nend\n\n\n",
			["untrigger"] = {
				["custom"] = "-----------------------------------------------------------------\n--- Spinalcrack's Void Tendril Counter -- www.howtopriest.com ---\n-----------------------------------------------------------------\n\nfunction()\n    if glb_wa_void_T_counter <= 0 then \n        glb_wa_void_T_counter = 0\n        return true \n    end \nend",
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "-----------------------------------------------------------------\n--- Spinalcrack's Void Tendril Counter -- www.howtopriest.com ---\n-----------------------------------------------------------------\n\nglb_wa_void_T_counter = 0\nglb_wa_void_T_timer = 0\nglb_wa_void_T_table = {}",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "-----------------------------------------------------------------\n--- Spinalcrack's Void Tendril Counter -- www.howtopriest.com ---\n-----------------------------------------------------------------\n\nglb_wa_void_T_counter = 0\nglb_wa_void_T_timer = 0\nglb_wa_void_T_table = {}\n\n\n\n",
					["do_custom"] = false,
				},
			},
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "shrink",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "shrink",
				},
			},
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "event",
				["custom_hide"] = "custom",
				["duration"] = "10",
				["event"] = "Combat Log",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "timed",
				["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
				["custom"] = "-----------------------------------------------------------------\n--- Spinalcrack's Void Tendril Counter -- www.howtopriest.com ---\n-----------------------------------------------------------------\n\nfunction(e, ...)\n    \n    local type = select(2,...)\n    local cName = select(5,...)\n    local charName = UnitName(\"player\")\n    \n    if  type == \"SPELL_SUMMON\" and cName == charName then\n        \n        cttv = select(13,...)\n        cttvId = GetSpellInfo(193371)\n        if cttv == cttvId then \n            voidId = select(8,...)\n            vtName = select(9,...)\n            glb_wa_void_T_counter = glb_wa_void_T_counter + 1\n            --print(glb_wa_void_T_counter..\") spawn: \"..voidId)\n            if glb_wa_void_T_table[glb_wa_void_T_counter] == nil then      \n                glb_wa_void_T_table[glb_wa_void_T_counter] = {}\n            end\n            \n            glb_wa_void_T_table[glb_wa_void_T_counter][\"guid\"] = voidId\n            glb_wa_void_T_timer = GetTime()\n            glb_wa_void_T_table[glb_wa_void_T_counter][\"spawnTime\"] = glb_wa_void_T_timer\n            \n        end\n        \n        \n        --[[elseif type == \"SPELL_AURA_REMOVED\" and cName == vtName then\n        \n        voidID_remove = select(4,...)\n        \n        i = 0\n        repeat\n            i = i + 1\n            if glb_wa_void_T_table[i][\"guid\"] == nil or glb_wa_void_T_table[i][\"spawnTime\"] == nil then\n            else\n                \n                if glb_wa_void_T_table[i][\"guid\"] == voidID_remove then \n                    --print(i..\") despawn: \"..voidID_remove) \n                    if GetTime() - glb_wa_void_T_table[i][\"spawnTime\"] >=10 then\n                        glb_wa_void_T_counter = glb_wa_void_T_counter - 1\n                        glb_wa_void_T_table[i][\"spawnTime\"] = nil\n                        glb_wa_void_T_table[i][\"guid\"] = nil\n                        break\n                    end\n                    \n                end\n            end\n            \n        until i == 10]]\n        \n        \n    end\n    \n    if glb_wa_void_T_counter > 0 then return true else return false end\n    \nend\n\n\n\n\n",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "TOP",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 36,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["displayIcon"] = 237569,
			["text2Containment"] = "INSIDE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Containment"] = "INSIDE",
			["xOffset"] = 0,
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["text1Font"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "Void Tendril Counter",
			["text2"] = "%c",
			["frameStrata"] = 1,
			["width"] = 36,
			["text2Font"] = "Friz Quadrata TT",
			["stickyDuration"] = false,
			["inverse"] = false,
			["text2Point"] = "CENTER",
			["init_started"] = 1,
			["conditions"] = {
			},
			["yOffset"] = 0,
			["parent"] = "Priest - Shadow: Void Tendril Tracker",
		},
		["Priest - Shadow: Procs & Buffs"] = {
			["grow"] = "HORIZONTAL",
			["controlledChildren"] = {
				"Priest - Shadow: Power Infusion", -- [1]
				"Priest - Shadow: Twist of Fate", -- [2]
				"Priest - Shadow: Vampiric Embrace", -- [3]
				"Priest - Shadow: Concordance of the Legionfall", -- [4]
				"Priest - Shadow: Mind Quickening", -- [5]
				"Priest - Shadow: Spear of Anguish", -- [6]
				"Priest - Shadow: Rising TIdes", -- [7]
				"Priest - Shadow: Sephuz's Secret", -- [8]
				"Priest - Shadow: Potion of Prolonged Power", -- [9]
				"Priest - Shadow: Mark of the Claw", -- [10]
				"Priest - Shadow: Shadowfiend", -- [11]
				"Priest - Shadow: Mindbender", -- [12]
				"Priest - Shadow: Bloodlust", -- [13]
			},
			["xOffset"] = 0,
			["yOffset"] = -155,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["space"] = 3,
			["url"] = "https://wago.io/rJnIlBdhb/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["backgroundInset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["stagger"] = 0,
			["version"] = 1,
			["height"] = 32.0000610351563,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = true,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "ascending",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["selfPoint"] = "CENTER",
			["sortHybridTable"] = {
				false, -- [1]
				false, -- [2]
			},
			["id"] = "Priest - Shadow: Procs & Buffs",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 451.999816894531,
			["disjunctive"] = "all",
			["radius"] = 200,
			["numTriggers"] = 1,
			["rotation"] = 0,
			["align"] = "CENTER",
			["conditions"] = {
			},
			["untrigger"] = {
			},
			["background"] = "None",
		},
		["Insanity Bar - Auspicious Spirits Bar 2"] = {
			["sparkWidth"] = 8,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.92156862745098, -- [1]
				0.90588235294118, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.92156862745098, -- [1]
				0.90588235294118, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0.89019607843137, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["single"] = 14,
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
						["ROGUE"] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["init_completed"] = 1,
			["texture"] = "ElvUI Norm",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 3,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				0.99607843137255, -- [2]
				0.98039215686274, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "any",
			["customText"] = "\n\n",
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = " ",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "alphaPulse",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return start + (((math.sin(angle) + 1)/2) * delta)\n    end\n  ",
					["use_alpha"] = false,
					["type"] = "custom",
					["scaley"] = 1,
					["alpha"] = 0.3,
					["duration_type"] = "seconds",
					["y"] = 0,
					["colorType"] = "custom",
					["colorA"] = 1,
					["use_color"] = true,
					["colorFunc"] = "-- Insanity Bar -- By Twintop - Illidan-US - 2017/06/13\n-- HowToPriest Thread -- https://howtopriest.com/viewtopic.php?f=104&t=8339\n-- WAGO.IO Link -- https://wago.io/4yfC0kJVW\nfunction(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    \n    WA_Insanity_Bar_Color_Text_AS = WA_Insanity_Bar_Color_Text_AS or \"FFDF00FF\";\n    \n    local a = 1;\n    local r = 0;\n    local g = 0;\n    local b = 0;\n    \n    if not (WA_Insanity_Bar_Color_Bar_AS == nil) and not (getRGBAFromString == nil) then\n        r, g, b, a = getRGBAFromString(WA_Insanity_Bar_Color_Bar_AS);\n    end\n    \n    return r/255, g/255, b/255, a/255;\nend",
					["rotate"] = 0,
					["x"] = 0,
					["duration"] = ".75",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["use_power"] = true,
				["unit"] = "player",
				["powertype"] = 3,
				["use_powertype"] = true,
				["custom_hide"] = "timed",
				["type"] = "custom",
				["custom_type"] = "status",
				["subeventPrefix"] = "SPELL",
				["event"] = "Insanity",
				["names"] = {
				},
				["customDuration"] = "-- Insanity Bar -- By Twintop - Illidan-US - 2017/06/13\n-- HowToPriest Thread -- https://howtopriest.com/viewtopic.php?f=104&t=8339\n-- WAGO.IO Link -- https://wago.io/4yfC0kJVW\nfunction()\n    WA_Voidform_Current_Insanity = UnitPower(\"player\", SPELL_POWER_SHADOW_ORBS, forceUpdate);\n    WA_Insanity_Bar_Current_Cast_Gain = WA_Insanity_Bar_Current_Cast_Gain or 0;\n    WA_Insanity_Bar_AS_Gain = 0;\n    local currentSpell = UnitCastingInfo('player');\n    local specGroup = GetActiveSpecGroup();\n    local isFotMSelected = select(4, GetTalentInfo(1, 2, specGroup));\n    local isLotVSelected = select(4, GetTalentInfo(7, 1, specGroup));\n    local PIName = select(2, GetTalentInfo(6, 1, specGroup));\n    local isPIActive = select(11, UnitBuff(\"player\", PIName));\n    local S2MName = select(2, GetTalentInfo(7, 3, specGroup));\n    local isS2MActive = select(11, UnitBuff(\"player\", S2MName));   \n    \n    local totalSAs = 0;    \n    WA_Insanity_Bar_AS_Gain = 0;\n    local color = \"FFFFFFFF\";\n    local insanityColor = \"FFFFFFFF\";\n    local specGroup = GetActiveSpecGroup();\n    local _, _, _, vfCount, _, vfDuration, _, _, _, _, vfSpellId = UnitBuff(\"player\",GetSpellInfo(228264));\n    \n    WA_SA_NUM_UNITS = WA_SA_NUM_UNITS or 0;\n    \n    if WA_SA_NUM_UNITS > 0 then\n        for guid,count in pairs(WA_SA_STATS) do\n            totalSAs = totalSAs + WA_SA_STATS[guid].Count;\n        end\n        \n        if totalSAs > WA_SA_TOTAL then\n            WA_Insanity_Bar_AS_Gain = WA_SA_TOTAL or 0;\n        else\n            WA_Insanity_Bar_AS_Gain = totalSAs or 0;\n        end\n    else\n        WA_Insanity_Bar_AS_Gain = -2;\n    end\n    \n    if WA_Insanity_Bar_AS_Gain <= 0 then\n        WA_Insanity_Bar_AS_Gain = 0;\n    end\n    \n    if WA_Insanity_Bar_AS_Gain == 0 then\n        return 0,0,0,0;\n    end    \n    \n    WA_Insanity_Bar_AS_Gain = WA_Insanity_Bar_AS_Gain * 3; \n    \n    if isS2MActive then\n        WA_Insanity_Bar_AS_Gain = WA_Insanity_Bar_AS_Gain * 2.0;\n    end   \n    \n    if isPIActive then\n        WA_Insanity_Bar_AS_Gain = WA_Insanity_Bar_AS_Gain * 1.25;\n    end\n    \n    return (WA_Voidform_Current_Insanity+WA_Insanity_Bar_Current_Cast_Gain+(WA_Insanity_Bar_AS_Gain)),100,0,0;\nend",
				["debuffType"] = "HELPFUL",
				["custom"] = "-- Insanity Bar -- By Twintop - Illidan-US - 2017/06/13\n-- HowToPriest Thread -- https://howtopriest.com/viewtopic.php?f=104&t=8339\n-- WAGO.IO Link -- https://wago.io/4yfC0kJVW\nfunction()\n    return true;\nend",
				["subeventSuffix"] = "_CAST_START",
				["check"] = "update",
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["use_unit"] = true,
			},
			["text"] = false,
			["parent"] = "Priest - Shadow: Insanity Bar",
			["stickyDuration"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["textSize"] = 18,
			["height"] = 26,
			["timer"] = false,
			["timerFlags"] = "OUTLINE",
			["inverse"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["color"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["anchorFrameType"] = "SCREEN",
			["customTextUpdate"] = "update",
			["stacksFont"] = "Friz Quadrata TT",
			["border"] = false,
			["borderEdge"] = "Blizzard Tooltip",
			["sparkHidden"] = "NEVER",
			["borderSize"] = 3,
			["id"] = "Insanity Bar - Auspicious Spirits Bar 2",
			["icon_side"] = "RIGHT",
			["displayTextRight"] = " ",
			["barInFront"] = true,
			["sparkHeight"] = 26,
			["auto"] = true,
			["textFlags"] = "None",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 18,
			["sparkOffsetX"] = 0,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_power"] = true,
						["event"] = "Power",
						["use_unit"] = true,
						["powertype"] = 13,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_percentpower"] = false,
						["use_powertype"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 2,
			["width"] = 407,
			["sparkRotation"] = 0,
			["useAdjustededMax"] = false,
			["numTriggers"] = 2,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["zoom"] = 0,
			["icon"] = false,
		},
		["Insanity Bar - Non-LotV Marker 1"] = {
			["color"] = {
				0.6156862745098, -- [1]
				0.6156862745098, -- [2]
				0.6156862745098, -- [3]
				0.75, -- [4]
			},
			["mirror"] = false,
			["untrigger"] = {
				["spellName"] = 228260,
			},
			["anchorPoint"] = "CENTER",
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["activeTriggerMode"] = 0,
			["yOffset"] = 0,
			["rotate"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["selfPoint"] = "CENTER",
			["id"] = "Insanity Bar - Non-LotV Marker 1",
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_inverse"] = true,
				["use_unit"] = true,
				["use_power"] = true,
				["custom_hide"] = "timed",
				["power"] = "100",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["type"] = "status",
				["use_health"] = true,
				["use_targetRequired"] = false,
				["power_operator"] = "<",
				["health_operator"] = ">",
				["event"] = "Action Usable",
				["health"] = "0",
				["realSpellName"] = "Void Eruption",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["unit"] = "player",
				["unevent"] = "auto",
				["spellName"] = 228260,
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["frameStrata"] = 6,
			["width"] = 1,
			["rotation"] = 0,
			["discrete_rotation"] = 0,
			["numTriggers"] = 2,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["inverse"] = true,
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["names"] = {
							"Voidform", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["height"] = 32,
			["conditions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						[20] = true,
						[21] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_talent"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 150,
		},
		["Priest - Shadow: Shadowfiend"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
			},
			["trigger"] = {
				["duration"] = "39",
				["names"] = {
					"Potion of Deadly Grace", -- [1]
				},
				["use_destName"] = false,
				["use_cloneId"] = false,
				["custom_hide"] = "timed",
				["type"] = "event",
				["subeventSuffix"] = "_CAST_SUCCESS",
				["spellName"] = "Voidling",
				["event"] = "Combat Log",
				["debuffType"] = "HELPFUL",
				["unevent"] = "timed",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["use_sourceUnit"] = true,
				["unit"] = "player",
				["use_destUnit"] = false,
				["sourceUnit"] = "player",
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 32,
			["selfPoint"] = "CENTER",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = 136199,
			["yOffset"] = 0,
			["text2Containment"] = "INSIDE",
			["disjunctive"] = "all",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["text1Containment"] = "INSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Font"] = "Friz Quadrata TT",
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["text2Enabled"] = false,
			["init_completed"] = 1,
			["text1"] = "%c",
			["text1Font"] = "Friz Quadrata TT",
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "Priest - Shadow: Shadowfiend",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["width"] = 32,
			["stickyDuration"] = false,
			["text2Point"] = "CENTER",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Priest - Shadow: Procs & Buffs",
		},
		["Priest - Shadow: Mindbender"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
			},
			["trigger"] = {
				["duration"] = "24",
				["names"] = {
					"Potion of Deadly Grace", -- [1]
				},
				["use_destName"] = false,
				["custom_hide"] = "timed",
				["type"] = "event",
				["unevent"] = "timed",
				["spellName"] = "Mindbender",
				["event"] = "Combat Log",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_SUCCESS",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["use_sourceUnit"] = true,
				["unit"] = "player",
				["use_destUnit"] = false,
				["sourceUnit"] = "player",
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 32,
			["selfPoint"] = "CENTER",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 18,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = 136214,
			["yOffset"] = 0,
			["text2Containment"] = "INSIDE",
			["disjunctive"] = "all",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["text1Containment"] = "INSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Font"] = "Friz Quadrata TT",
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["text2Enabled"] = false,
			["init_completed"] = 1,
			["text1"] = "%c",
			["text1Font"] = "Friz Quadrata TT",
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = false,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "Priest - Shadow: Mindbender",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["width"] = 32,
			["stickyDuration"] = false,
			["text2Point"] = "CENTER",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Priest - Shadow: Procs & Buffs",
		},
		["Insanity Bar - Casting Bar 2"] = {
			["sparkWidth"] = 8,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0.92156862745098, -- [1]
				0.90588235294118, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.172549019607843, -- [1]
				0.0431372549019608, -- [2]
				0.215686274509804, -- [3]
				0.900000005960465, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.549019607843137, -- [1]
				0.141176470588235, -- [2]
				0.690196078431373, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
						["ROGUE"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["init_completed"] = 1,
			["texture"] = "ElvUI Norm",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 3,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				0.99607843137255, -- [2]
				0.98039215686274, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["color"] = {
			},
			["customText"] = "\n\n",
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["textSize"] = 18,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "alphaPulse",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return start + (((math.sin(angle) + 1)/2) * delta)\n    end\n  ",
					["use_alpha"] = false,
					["type"] = "custom",
					["use_color"] = true,
					["alpha"] = 0.3,
					["duration"] = ".75",
					["y"] = 0,
					["x"] = 0,
					["colorA"] = 1,
					["scaley"] = 1,
					["colorFunc"] = "-- Insanity Bar -- By Twintop - Illidan-US - 2017/06/13\n-- HowToPriest Thread -- https://howtopriest.com/viewtopic.php?f=104&t=8339\n-- WAGO.IO Link -- https://wago.io/4yfC0kJVW\nfunction(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    \n    WA_Insanity_Bar_Color_Text_Incoming = WA_Insanity_Bar_Color_Text_Incoming or \"FFFFFFFF\";\n    \n    local a = 0;\n    local r = 0;\n    local g = 0;\n    local b = 0;\n    \n    if getRGBAFromString ~= nil then\n        r, g, b, a = getRGBAFromString(WA_Insanity_Bar_Color_Bar_Incoming);\n    end\n    \n    \n    return r/255, g/255, b/255, a/255;\nend",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["colorType"] = "custom",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["use_power"] = true,
				["unit"] = "player",
				["powertype"] = 3,
				["use_powertype"] = true,
				["custom_hide"] = "timed",
				["type"] = "custom",
				["custom_type"] = "status",
				["subeventPrefix"] = "SPELL",
				["event"] = "Insanity",
				["names"] = {
				},
				["customDuration"] = "-- Insanity Bar -- By Twintop - Illidan-US - 2017/06/13\n-- HowToPriest Thread -- https://howtopriest.com/viewtopic.php?f=104&t=8339\n-- WAGO.IO Link -- https://wago.io/4yfC0kJVW\nfunction()\n    WA_Insanity_Bar_Current_Cast_Gain = 0;\n    WA_Voidform_Current_Insanity = UnitPower(\"player\", SPELL_POWER_SHADOW_ORBS, forceUpdate);\n    WA_Insanity_Bar_Current_Cast_MindSear_Flag = 0;\n    local currentSpell = UnitCastingInfo('player');\n    local currentChannel = UnitChannelInfo('player');\n    local specGroup = GetActiveSpecGroup();\n    local isFotMSelected = select(4, GetTalentInfo(1, 2, specGroup));\n    local PIName = select(2, GetTalentInfo(6, 1, specGroup));\n    local isPIActive = select(11, UnitBuff(\"player\", PIName));\n    local S2MName = select(2, GetTalentInfo(7, 3, specGroup));\n    local isS2MActive = select(11, UnitBuff(\"player\", S2MName));\n    \n    -- T20 2P\n    local T20_2P_Stacks = 0;\n    \n    local v, _, _, _ = GetBuildInfo();\n    local v_maj, v_min, v_patch = strsplit(\".\", v, 3);\n    local version = v_maj .. v_min .. v_patch;\n    \n    if tonumber(version) > 720 then\n        local T20_2P = GetSpellInfo(247226);\n        T20_2P_Stacks = select(4, UnitBuff(\"player\", select(1, T20_2P)));  \n        if T20_2P_Stacks == nil then\n            T20_2P_Stacks = 0;\n        end\n        \n    end\n    \n    local currentSpellChannel = nil;\n    \n    if currentSpell == nil and currentChannel == nil then\n        WA_Insanity_Bar_Current_Cast_Gain = 0;\n        return 0,0,0,0;\n    elseif currentSpell == nil then\n        currentSpellChannel = currentChannel;\n    else\n        currentSpellChannel = currentSpell;\n    end\n    \n    local MB = GetSpellInfo(8092);\n    local MF = GetSpellInfo(15407);\n    local MSpike = GetSpellInfo(73510);\n    local MSear = GetSpellInfo(48045);\n    local SWV = GetSpellInfo(205351);\n    local VT = GetSpellInfo(34914);\n    \n    if select(1, currentSpellChannel) == select(1, MB) then --Mind Blast\n        \n        if isFotMSelected then\n            WA_Insanity_Bar_Current_Cast_Gain = (15 + T20_2P_Stacks) * 1.2;\n        else\n            WA_Insanity_Bar_Current_Cast_Gain = 15 + T20_2P_Stacks;\n            \n        end               \n        \n    elseif select(1, currentSpellChannel) == select(1, MF) then --Mind Flay\n        \n        if isFotMSelected then\n            WA_Insanity_Bar_Current_Cast_Gain = 3 * 1.2;\n        else\n            WA_Insanity_Bar_Current_Cast_Gain = 3;\n        end\n        \n    elseif select(1, currentSpellChannel) == select(1, SWV) then --Shadow Word: Void    \n        \n        WA_Insanity_Bar_Current_Cast_Gain = 25;\n        \n    elseif select(1, currentSpellChannel) == select(1, VT) then --Vampric Touch\n        WA_Insanity_Bar_Current_Cast_Gain = 6;\n        \n    else\n        WA_Insanity_Bar_Current_Cast_Gain = 0;\n        return 0,0,0,0;\n    end\n    \n    if isPIActive then\n        WA_Insanity_Bar_Current_Cast_Gain = WA_Insanity_Bar_Current_Cast_Gain * 1.25;\n    end\n    \n    if isS2MActive then\n        WA_Insanity_Bar_Current_Cast_Gain = WA_Insanity_Bar_Current_Cast_Gain * 2.0;\n        \n    end\n    \n    \n    return (WA_Voidform_Current_Insanity+WA_Insanity_Bar_Current_Cast_Gain),100,0,0;\nend",
				["debuffType"] = "HELPFUL",
				["custom"] = "-- Insanity Bar -- By Twintop - Illidan-US - 2017/06/13\n-- HowToPriest Thread -- https://howtopriest.com/viewtopic.php?f=104&t=8339\n-- WAGO.IO Link -- https://wago.io/4yfC0kJVW\nfunction()\n    return true;\nend",
				["subeventSuffix"] = "_CAST_START",
				["check"] = "update",
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["use_unit"] = true,
			},
			["text"] = false,
			["parent"] = "Priest - Shadow: Insanity Bar",
			["stickyDuration"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["displayTextLeft"] = " ",
			["height"] = 26,
			["timer"] = false,
			["timerFlags"] = "OUTLINE",
			["inverse"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "any",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["anchorFrameType"] = "SCREEN",
			["customTextUpdate"] = "update",
			["stacksFont"] = "Friz Quadrata TT",
			["border"] = false,
			["borderEdge"] = "Blizzard Tooltip",
			["sparkHidden"] = "NEVER",
			["borderSize"] = 3,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["fullscan"] = true,
						["type"] = "status",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["use_power"] = true,
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["powertype"] = 13,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_percentpower"] = false,
						["use_unit"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["icon_side"] = "RIGHT",
			["timerSize"] = 18,
			["barInFront"] = true,
			["sparkHeight"] = 26,
			["auto"] = true,
			["textFlags"] = "None",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["sparkOffsetX"] = 0,
			["id"] = "Insanity Bar - Casting Bar 2",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 3,
			["width"] = 407,
			["sparkRotation"] = 0,
			["useAdjustededMax"] = false,
			["numTriggers"] = 2,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["zoom"] = 0,
			["icon"] = false,
		},
		["Priest - Shadow: Spear of Anguish"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Spear of Anguish", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 32,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Containment"] = "INSIDE",
			["text2Containment"] = "INSIDE",
			["yOffset"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["auto"] = true,
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "Priest - Shadow: Spear of Anguish",
			["text2"] = "%p",
			["frameStrata"] = 1,
			["width"] = 32,
			["stickyDuration"] = false,
			["text2Point"] = "CENTER",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Priest - Shadow: Procs & Buffs",
		},
		["Priest - Shadow: Mind Quickening"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Mind Quickening", -- [1]
				},
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 32,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Containment"] = "INSIDE",
			["text2Containment"] = "INSIDE",
			["yOffset"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%s",
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["auto"] = true,
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "Priest - Shadow: Mind Quickening",
			["text2"] = "%p",
			["frameStrata"] = 1,
			["width"] = 32,
			["stickyDuration"] = false,
			["text2Point"] = "CENTER",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Priest - Shadow: Procs & Buffs",
		},
		["Priest - Shadow: Bloodlust"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Time Warp", -- [1]
					"Bloodlust", -- [2]
					"Heroism", -- [3]
					"Ancient Hysteria", -- [4]
					"Drums of Rage", -- [5]
					"Drums of Fury", -- [6]
					"Netherwinds", -- [7]
					"Drums of the Mountain", -- [8]
				},
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 32,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Containment"] = "INSIDE",
			["text2Containment"] = "INSIDE",
			["yOffset"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["auto"] = true,
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "Priest - Shadow: Bloodlust",
			["text2"] = "%p",
			["frameStrata"] = 1,
			["width"] = 32,
			["stickyDuration"] = false,
			["text2Point"] = "CENTER",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Priest - Shadow: Procs & Buffs",
		},
		["Priest - Shadow: Rising TIdes"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Rising Tides", -- [1]
				},
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 32,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Containment"] = "INSIDE",
			["text2Containment"] = "INSIDE",
			["yOffset"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%s",
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["auto"] = true,
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "Priest - Shadow: Rising TIdes",
			["text2"] = "%p",
			["frameStrata"] = 1,
			["width"] = 32,
			["stickyDuration"] = false,
			["text2Point"] = "CENTER",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Priest - Shadow: Procs & Buffs",
		},
		["Insanity Bar - Text - Right 2"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 14,
			["xOffset"] = 204,
			["displayText"] = "%c",
			["customText"] = "function()\n    local health = UnitHealth(\"target\")\n    local time = GetTime()\n    local text\n    local oldhealth\n    if oldhealth ~= health then\n        oldhealth = health\n        if health == UnitHealthMax(\"target\") then -- THiS BLOCK IS GOOD\n            health0, time0, mhealth, mtime = nil\n            text = \" - - \"\n            return text\n        end\n        \n        if not health0 then -- GOOD\n            health0, time0 = health, time\n            mhealth, mtime = health, time\n            return\n        end\n        \n        mhealth = (mhealth + health) * .5\n        mtime = (mtime + time) * .5\n        \n        if mhealth >= health0 then\n            text = \" - - \"\n            health0, time0, mhealth, mtime =nil\n        else\n            time = health * (time0 - mtime) / (mhealth - health0)\n            if (time <= 60) then\n                text = format(\"%0.2d\",time)           \n            elseif (time > 60) then\n                text = format(\"%d:%0.2d\",time / 60, time % 60)\n            end\n            return text\n        end\n    end\nend",
			["untrigger"] = {
			},
			["regionType"] = "text",
			["parent"] = "Priest - Shadow: Insanity Bar",
			["yOffset"] = 0,
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
					["sound"] = " custom",
					["do_sound"] = false,
				},
			},
			["anchorPoint"] = "CENTER",
			["id"] = "Insanity Bar - Text - Right 2",
			["justify"] = "RIGHT",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
			},
			["width"] = 11.4999980926514,
			["frameStrata"] = 6,
			["anchorFrameType"] = "SCREEN",
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["use_power"] = true,
				["event"] = "Power",
				["use_percentpower"] = false,
				["names"] = {
				},
				["powertype"] = 13,
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["use_unit"] = true,
				["use_powertype"] = true,
				["custom_hide"] = "timed",
			},
			["font"] = "PT Sans Narrow",
			["numTriggers"] = 1,
			["selfPoint"] = "RIGHT",
			["height"] = 14.1666269302368,
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				1, -- [1]
				0.9843137254902, -- [2]
				0.9921568627451, -- [3]
				1, -- [4]
			},
		},
		["Insanity Bar - Border - Insanity Ready 2"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["xOffset"] = -6.1035156250e-005,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.92549019607843, -- [1]
				0.90588235294118, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.38039215686275, -- [1]
				0, -- [2]
				0.75686274509804, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
						["ROGUE"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["init_completed"] = 1,
			["texture"] = "ElvUI Norm",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 1,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 0,
			["textColor"] = {
				1, -- [1]
				0.99607843137255, -- [2]
				0.98039215686274, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["color"] = {
			},
			["customText"] = "\n\n",
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["textSize"] = 18,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = ".75",
					["alphaType"] = "alphaPulse",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return start + (((math.sin(angle) + 1)/2) * delta)\n    end\n  ",
					["use_alpha"] = true,
					["type"] = "custom",
					["scaley"] = 1,
					["alpha"] = 0.3,
					["duration_type"] = "seconds",
					["y"] = 0,
					["colorType"] = "custom",
					["use_color"] = true,
					["colorB"] = 1,
					["colorFunc"] = "-- Insanity Bar -- By Twintop - Illidan-US - 2017/06/13\n-- HowToPriest Thread -- https://howtopriest.com/viewtopic.php?f=104&t=8339\n-- WAGO.IO Link -- https://wago.io/4yfC0kJVW\nfunction(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    \n    WA_Insanity_Bar_Color_Bar_Status1 = WA_Insanity_Bar_Color_Bar_Status1 or \"FF763BAF\";\n    WA_Insanity_Bar_Color_Bar_Status2_Flash = WA_Insanity_Bar_Color_Bar_Status2_Flash or \"995C2F89\";\n    WA_Insanity_Bar_Color_Bar_Status2 = WA_Insanity_Bar_Color_Bar_Status2 or \"FF5C2F89\";\n    WA_Insanity_Bar_Color_Bar_Status3 = WA_Insanity_Bar_Color_Bar_Status3 or\"FF431863\";\n    \n    WA_Voidform_Drain_Stacks = WA_Voidform_Drain_Stacks or 0;\n    WA_Voidform_Current_Insanity = WA_Voidform_Current_Insanity or 0;\n    \n    local specGroup = GetActiveSpecGroup();\n    local isLotVSelected = select(4, GetTalentInfo(7, 1, specGroup));\n    local a = 1;\n    local r = 0;\n    local g = 0;\n    local b = 0;\n    \n    getRGBAFromString = function(s) \n        local _a = 1;\n        local _r = 0;\n        local _g = 1;\n        local _b = 0;\n        \n        if not (s == nil) then\n            \n            _a = tonumber(string.sub(s, 1, 2), 16);\n            _r = tonumber(string.sub(s, 3, 4), 16);\n            _g = tonumber(string.sub(s, 5, 6), 16);\n            _b = tonumber(string.sub(s, 7, 8), 16);\n            \n        end\n        \n        return _r, _g, _b, _a;\n    end\n    \n    \n    if WA_Voidform_Drain_Stacks > 0 then\n        \n        r, g, b, a = getRGBAFromString(WA_Insanity_Bar_Color_Bar_Status3);  \n        \n    elseif WA_Voidform_Current_Insanity == 100 or (isLotVSelected and WA_Voidform_Current_Insanity >= 64) then\n        \n        r, g, b, a = getRGBAFromString(WA_Insanity_Bar_Color_Bar_Status2_Flash);\n        \n    else\n        \n        r, g, b, a = getRGBAFromString(WA_Insanity_Bar_Color_Bar_Status1);\n        \n    end\n    \n    return r/255, g/255, b/255, a/255;\nend\n\n\n\n",
					["rotate"] = 0,
					["scalex"] = 1,
					["x"] = 0,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["use_power"] = true,
				["use_unit"] = true,
				["powertype"] = 13,
				["use_powertype"] = true,
				["custom_hide"] = "timed",
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Power",
				["use_percentpower"] = false,
				["subeventPrefix"] = "SPELL",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["unit"] = "player",
				["spellName"] = 0,
			},
			["text"] = false,
			["parent"] = "Priest - Shadow: Insanity Bar",
			["stickyDuration"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["disjunctive"] = "all",
			["timer"] = false,
			["height"] = 26,
			["timerFlags"] = "OUTLINE",
			["inverse"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.31410133838654, -- [4]
			},
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMax"] = false,
			["zoom"] = 0,
			["border"] = true,
			["borderEdge"] = "1 Pixel",
			["id"] = "Insanity Bar - Border - Insanity Ready 2",
			["borderSize"] = 1,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["spellName"] = 228260,
						["event"] = "Action Usable",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Void Eruption",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["spellName"] = 228260,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["inverse"] = true,
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Voidform", -- [1]
						},
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
			},
			["icon_side"] = "RIGHT",
			["timerSize"] = 18,
			["barInFront"] = true,
			["sparkHeight"] = 30,
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["sparkOffsetX"] = 0,
			["sparkHidden"] = "NEVER",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 5,
			["width"] = 407,
			["textFlags"] = "None",
			["displayTextLeft"] = " ",
			["numTriggers"] = 3,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_frame"] = "WeakAuras:Insanity Bar - Main Bar",
					["do_custom"] = false,
					["glow_action"] = "show",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["icon"] = false,
		},
		["Priest - Shadow: Insanity Bar"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Insanity Bar - Options and Trigger 2", -- [1]
				"Insanity Bar - Text - Left 2", -- [2]
				"Insanity Bar - Text - Middle 2", -- [3]
				"Insanity Bar - Text - Right 2", -- [4]
				"Insanity Bar - Border - Insanity Ready 2", -- [5]
				"Insanity Bar - Main Bar 2", -- [6]
				"Insanity Bar - Casting Bar 2", -- [7]
				"Insanity Bar - Auspicious Spirits Bar 2", -- [8]
				"Insanity Bar - Non-LotV Marker 1 2", -- [9]
				"Insanity Bar - Non-LotV Marker 2 2", -- [10]
				"Insanity Bar - LotV Marker 1 2", -- [11]
				"Insanity Bar - LotV Marker 2 2", -- [12]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["border"] = false,
			["yOffset"] = -188,
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderEdge"] = "None",
			["activeTriggerMode"] = -10,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/rJD8ySOhW/1",
			["expanded"] = true,
			["untrigger"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["borderOffset"] = 5,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["selfPoint"] = "BOTTOMLEFT",
			["additional_triggers"] = {
			},
			["numTriggers"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["version"] = 1,
			["id"] = "Priest - Shadow: Insanity Bar",
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["conditions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Priest - Shadow: Concordance of the Legionfall"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Concordance of the Legionfall", -- [1]
				},
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 32,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 16,
					["multi"] = {
						[16] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Containment"] = "INSIDE",
			["text2Containment"] = "INSIDE",
			["yOffset"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["auto"] = true,
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "Priest - Shadow: Concordance of the Legionfall",
			["text2"] = "%p",
			["frameStrata"] = 1,
			["width"] = 32,
			["stickyDuration"] = false,
			["text2Point"] = "CENTER",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Priest - Shadow: Procs & Buffs",
		},
		["Insanity Bar - LotV Marker 1 2"] = {
			["xOffset"] = 61,
			["parent"] = "Priest - Shadow: Insanity Bar",
			["regionType"] = "texture",
			["mirror"] = false,
			["untrigger"] = {
				["spellName"] = 228260,
			},
			["anchorPoint"] = "CENTER",
			["conditions"] = {
			},
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = 0,
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["id"] = "Insanity Bar - LotV Marker 1 2",
			["trigger"] = {
				["use_power"] = true,
				["use_unit"] = true,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["custom_hide"] = "timed",
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["use_health"] = true,
				["unevent"] = "auto",
				["power_operator"] = "<",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Action Usable",
				["spellIds"] = {
				},
				["realSpellName"] = "Void Eruption",
				["use_spellName"] = true,
				["health"] = "0",
				["unit"] = "player",
				["health_operator"] = ">",
				["power"] = "60",
				["spellName"] = 228260,
				["use_inverse"] = true,
			},
			["discrete_rotation"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
							"Voidform", -- [1]
						},
						["inverse"] = true,
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["desaturate"] = false,
			["frameStrata"] = 6,
			["width"] = 2,
			["rotation"] = 0,
			["anchorFrameType"] = "SCREEN",
			["numTriggers"] = 2,
			["selfPoint"] = "CENTER",
			["height"] = 32,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["single"] = 19,
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				0.70980392156863, -- [1]
				0.70980392156863, -- [2]
				0.70980392156863, -- [3]
				1, -- [4]
			},
		},
		["Priest - Shadow: Potion of Prolonged Power"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Potion of Deadly Grace", -- [1]
					"Potion of Prolonged Power", -- [2]
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 32,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Containment"] = "INSIDE",
			["text2Containment"] = "INSIDE",
			["yOffset"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["auto"] = true,
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "Priest - Shadow: Potion of Prolonged Power",
			["text2"] = "%p",
			["frameStrata"] = 1,
			["width"] = 32,
			["stickyDuration"] = false,
			["text2Point"] = "CENTER",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Priest - Shadow: Procs & Buffs",
		},
		["Priest - Shadow: Power Infusion"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Power Infusion", -- [1]
				},
				["spellIds"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 32,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 16,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Containment"] = "INSIDE",
			["text2Containment"] = "INSIDE",
			["yOffset"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["auto"] = true,
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "Priest - Shadow: Power Infusion",
			["text2"] = "%p",
			["frameStrata"] = 1,
			["width"] = 32,
			["stickyDuration"] = false,
			["text2Point"] = "CENTER",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Priest - Shadow: Procs & Buffs",
		},
		["Priest - Shadow: Sephuz's Secret"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Sephuz's Secret", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 32,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Containment"] = "INSIDE",
			["text2Containment"] = "INSIDE",
			["yOffset"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["auto"] = true,
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "Priest - Shadow: Sephuz's Secret",
			["text2"] = "%p",
			["frameStrata"] = 1,
			["width"] = 32,
			["stickyDuration"] = false,
			["text2Point"] = "CENTER",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Priest - Shadow: Procs & Buffs",
		},
		["Insanity Bar - Options and Trigger 2"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 14,
			["disjunctive"] = "any",
			["displayText"] = "%c",
			["customText"] = "\n\n",
			["untrigger"] = {
			},
			["regionType"] = "text",
			["parent"] = "Priest - Shadow: Insanity Bar",
			["xOffset"] = 0,
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "-- Insanity Bar -- By Twintop - Illidan-US - 2017/06/13\n-- HowToPriest Thread -- https://howtopriest.com/viewtopic.php?f=104&t=8339\n-- WAGO.IO Link -- https://wago.io/4yfC0kJVW\n------------------------------------------------------\n-- This is where you can customize the look and feel of the Insanity Bar.\n-- Colors are in the following format: Hexdecimal, AlphaRedGreenBlue, I.E.: AARRGGBB\n-- If you make edits to the following values and the Insanity Bar works, DO NOT expect support! I am not responsible for any issues that result from changes made after import.\n-- You have been warned!\n------------------------------------------------------\n-- AFTER YOU ALTER THESE VARIABLES, do /console reloadui\n------------------------------------------------------\n\n---- BAR LAYOUT / LOOK AND FEEL ----\n\n-- Bar and Text Colors\n\nWA_Insanity_Bar_Color_Bar_Status1 = \"FFC2A3E0\"; --Unable to trigger Voidform\nWA_Insanity_Bar_Color_Bar_Status2 = \"FF5C2F89\"; --Can trigger Voidform\nWA_Insanity_Bar_Color_Bar_Status2_Flash = \"FFAA1863\"; --Can trigger Voidform - Bar Flash Color\nWA_Insanity_Bar_Color_Bar_Status3 = \"FF763BAF\"; --Currently in Voidform\nWA_Insanity_Bar_Color_Bar_Status3_Warning = \"FFFFFF00\"; --You will fall out of Voidform within the next 2 GCDs if you don't generate Insanity quickly!\nWA_Insanity_Bar_Color_Bar_Status3_End = \"FFFF0000\"; --You will fall out of Voidform within the next GCD if you don't generate Insanity quickly!\nWA_Insanity_Bar_Color_Bar_Incoming = \"FF9b9b9b\"; --Incoming Insanity from a hardcast\nWA_Insanity_Bar_Color_Bar_AS = \"FFDF73FF\"; --Incoming Insanity from Auspicious Spirits\nWA_Insanity_Bar_Color_Text_Current = \"FFFFFFFF\"; --Text color of the current amount of Insanity\nWA_Insanity_Bar_Color_Text_Incoming = \"FFFFFFFF\"; --Text color of the incoming Insanity value from a hardcast\nWA_Insanity_Bar_Color_Text_AS = \"FFDFFFFF\"; --Text color of the incoming Insanity value from Auspicious Spirits\nWA_Insanity_Bar_Color_Text_Left = \"00FFFFFF\"; --Text color of the information on the left side of the bar\nWA_Insanity_Bar_Color_Text_Middle = \"00FFFFFF\"; --Text color of the information in the middle of the bar during Voidform\n\n-- Bar Width and Height\n\nWA_Insanity_Bar_Width = 300; --Width of the bar, in pixels. Minimum 100px.\nWA_Insanity_Bar_Height = 19; --Height of the bar, in pixels. Minimum 1px.\n\n\n---- BAR TEXT ----\n\n-- All Bar Text\n\nWA_Insanity_Bar_Font_Size = 12; --Font size of all bar text. Minimum 4.\n\n-- Left Bar Text\nWA_Insanity_Bar_Show_Left_Lingering_Insanity_Left = false; --Show Lingering Insanity stacks on left side of bar next to Haste% when not in Voidform. Old style (pre 7.1.5) display.\nWA_Insanity_Bar_Show_Left_Voidform_Incoming_Stacks = false; --Show the number of incoming stacks of Voidform based on the expected remaining duration of Voidform.\n\n-- Middle Bar Text\nWA_Insanity_Bar_Show_Middle_Lingering_Insanity_Stacks_Middle = fasle; --Show Lingering Insanity stacks remaining in middle of the bar when not in Voidform.\nWA_Insanity_Bar_Show_Middle_Lingering_Insanity_Time_Middle = false; --Show Lingering Insanity effective duration remaining in middle of the bar when not in Voidform.\nWA_Insanity_Bar_Show_Middle_Voidform_Time_Remaining = false; --Show the amount of time, in seconds, that your current Voidform is expected to last based on current Insanity levels.\nWA_Insanity_Bar_Show_Middle_Voidform_Current_Drain = false; --Show the current Insanity drain based on Insanity Drain Stacks, in Insanity/sec.\n\n-- Right Bar Text\nWA_Insanity_Bar_Show_Right_Incoming_Casting_Insanity = false; --Show the amount of incoming Insanity from hardcasted spells.\nWA_Insanity_Bar_Show_Right_Incoming_AS_Insanity = false; --Show the amount of incoming Insanity from Auspicious Spirits. Requires Twintop's Auspicious Spirits Tracker WA -- https://wago.io/EJBhpyJE-\n\n\n---- OTHER OPTIONS ----\n\nWA_Insanity_Bar_Voidform_Summary = false; --Print out a summary of your Voidform to chat when you exit.\nWA_Insanity_Bar_S2M_Summary = true; --Print out a summary of your Surrender to Madness to chat when you die. Horribly.\nWA_Insanity_Bar_S2M_Wilhelm = true; --Play the Wilhelm Scream when you die in Surrender to Madness\n\n----------------------------------\n----------------------------------\n-- DO NOT EDIT BELOW THIS LINE! --\n----------------------------------\n----------------------------------\n\nlocal c_v, c_b, c_d, c_t = GetBuildInfo();\nWA_Insanity_Bar_v_major, WA_Insanity_Bar_v_minor, WA_Insanity_Bar_v_bf = strsplit(\".\", c_v, 3);\n\ngetRGBAFromString = function(s) \n    local _a = 1;\n    local _r = 0;\n    local _g = 1;\n    local _b = 0;\n    \n    if not (s == nil) then\n        \n        _a = tonumber(string.sub(s, 1, 2), 16);\n        _r = tonumber(string.sub(s, 3, 4), 16);\n        _g = tonumber(string.sub(s, 5, 6), 16);\n        _b = tonumber(string.sub(s, 7, 8), 16);\n        \n    end\n    \n    return _r, _g, _b, _a;\nend\n\nWA_Insanity_Drain = function(stacks)\n    local pct = 1.00;\n    WA_Voidform_T20_Count = WA_Voidform_T20_Count or 0;\n    if WA_Voidform_T20_Count >= 4 then\n        local specGroup = GetActiveSpecGroup();\n        local S2MName = select(2, GetTalentInfo(7, 3, specGroup));\n        local isS2MActive = select(11, UnitBuff(\"player\", S2MName));\n        if isS2MActive then\n            pct = 0.95;\n        else\n            pct = 0.90;\n        end\n    end    \n    \n    return (6.0 + ((stacks - 1) * (2 / 3))) * pct;\nend\n\nWA_Insanity_getRemainingTimeAndStackCount = function()         \n    WA_Voidform_Current_Insanity = WA_Voidform_Current_Insanity or 0;\n    WA_Voidform_Previous_Check_Time = WA_Voidform_Previous_Check_Time or 0;\n    WA_Voidform_VoidTorrent_Offset = WA_Voidform_VoidTorrent_Offset or 0;\n    WA_Voidform_Dispersion_Offset = WA_Voidform_Dispersion_Offset or 0;\n    WA_Voidform_Start_Time = WA_Voidform_Start_Time or 0;\n    WA_Voidform_Drain_Stacks = WA_Voidform_Drain_Stacks or 0;\n    WA_Voidform_Remaining_Time = WA_Voidform_Remaining_Time or 0;\n    WA_Voidform_Current_Drain_Rate =  WA_Voidform_Current_Drain_Rate or 0;\n    \n    local currentTime = GetTime();\n    WA_Voidform_Current_Insanity = UnitPower(\"player\", SPELL_POWER_SHADOW_ORBS, forceUpdate);\n    local _, _, _, vfCount, _, vfDuration, _, _, _, _, vfSpellId = UnitBuff(\"player\",GetSpellInfo(228264));\n    \n    if vfSpellId == nil then\n        WA_Voidform_Drain_Stacks = 0;\n        WA_Voidform_Current_Drain_Rate = 0;\n        return 0, 0, 0;\n    else\n        local down, up, lagHome, lagWorld = GetNetStats();\n        local TimeDiff = currentTime - WA_Voidform_Previous_Stack_Time;        \n        local remainingInsanity = tonumber(WA_Voidform_Current_Insanity);\n        \n        local remainingTime = 0;        \n        local moreStacks = 0;\n        local latency = lagWorld / 1000;\n        local workingStack = WA_Voidform_Drain_Stacks;\n        local startingStack = workingStack;\n        local drainPct = 1.0;\n        \n        if (remainingInsanity > 0) then\n            while (remainingInsanity > 0)\n            do\n                moreStacks = moreStacks+1;\n                local insanityDrain = WA_Insanity_Drain(workingStack);\n                local stackTime = 1.0;\n                \n                if workingStack == startingStack then\n                    \n                    stackTime = 1.0 - TimeDiff + latency;\n                    \n                end\n                \n                \n                if (stackTime > 0) then                    \n                    if (insanityDrain * stackTime) >= remainingInsanity then                       \n                        stackTime = remainingInsanity / insanityDrain;\n                        remainingInsanity = 0;\n                    else\n                        remainingInsanity = remainingInsanity - (insanityDrain * stackTime);\n                    end\n                    \n                    remainingTime = remainingTime + stackTime;\n                end               \n                \n                workingStack = workingStack + 1;\n            end\n        end       \n        \n        WA_Voidform_Remaining_Time = remainingTime;\n        WA_Voidform_Current_Drain_Rate = WA_Insanity_Drain(WA_Voidform_Drain_Stacks);\n        \n        return remainingTime, vfCount, moreStacks;\n    end  \nend\n\nif WA_Insanity_Bar_Width <= 100 then\n    WA_Insanity_Bar_Width = 547;\nend\n\nif WA_Insanity_Bar_Height <= 1 then\n    WA_Insanity_Bar_Height = 26;\nend\n\nif WA_Insanity_Bar_Font_Size <= 4 then\n    WA_Insanity_Bar_Font_Size = 18;\nend\n\n\n\nWeakAurasSaved[\"displays\"][\"Insanity Bar - Border - Insanity Ready\"][\"width\"] = WA_Insanity_Bar_Width;\nWeakAurasSaved[\"displays\"][\"Insanity Bar - Main Bar\"][\"width\"] = WA_Insanity_Bar_Width;\nWeakAurasSaved[\"displays\"][\"Insanity Bar - Casting Bar\"][\"width\"] = WA_Insanity_Bar_Width;\nWeakAurasSaved[\"displays\"][\"Insanity Bar - Auspicious Spirits Bar\"][\"width\"] = WA_Insanity_Bar_Width;\nWeakAurasSaved[\"displays\"][\"Insanity Bar - Border - Insanity Ready\"][\"height\"] = WA_Insanity_Bar_Height;\nWeakAurasSaved[\"displays\"][\"Insanity Bar - Main Bar\"][\"height\"] = WA_Insanity_Bar_Height;\nWeakAurasSaved[\"displays\"][\"Insanity Bar - Casting Bar\"][\"height\"] = WA_Insanity_Bar_Height;\nWeakAurasSaved[\"displays\"][\"Insanity Bar - Auspicious Spirits Bar\"][\"height\"] = WA_Insanity_Bar_Height;\nWeakAurasSaved[\"displays\"][\"Insanity Bar - Text - Left\"][\"xOffset\"] = -(WA_Insanity_Bar_Width/2);\nWeakAurasSaved[\"displays\"][\"Insanity Bar - Text - Middle\"][\"xOffset\"] = 0;\nWeakAurasSaved[\"displays\"][\"Insanity Bar - Text - Right\"][\"xOffset\"] = (WA_Insanity_Bar_Width/2);\nWeakAurasSaved[\"displays\"][\"Insanity Bar - Text - Left\"][\"fontSize\"] = WA_Insanity_Bar_Font_Size;\nWeakAurasSaved[\"displays\"][\"Insanity Bar - Text - Middle\"][\"fontSize\"] = WA_Insanity_Bar_Font_Size;\nWeakAurasSaved[\"displays\"][\"Insanity Bar - Text - Right\"][\"fontSize\"] = WA_Insanity_Bar_Font_Size;\nWeakAurasSaved[\"displays\"][\"Insanity Bar - Non-LotV Marker 1\"][\"xOffset\"] = (WA_Insanity_Bar_Width/2);\nWeakAurasSaved[\"displays\"][\"Insanity Bar - Non-LotV Marker 2\"][\"xOffset\"] = (WA_Insanity_Bar_Width/2);\nWeakAurasSaved[\"displays\"][\"Insanity Bar - LotV Marker 1\"][\"xOffset\"] = (WA_Insanity_Bar_Width*0.15);\nWeakAurasSaved[\"displays\"][\"Insanity Bar - LotV Marker 2\"][\"xOffset\"] = (WA_Insanity_Bar_Width*0.15);\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
			},
			["selfPoint"] = "BOTTOM",
			["id"] = "Insanity Bar - Options and Trigger 2",
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["unevent"] = "auto",
				["custom_type"] = "status",
				["names"] = {
				},
				["use_power"] = true,
				["event"] = "Power",
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["powertype"] = 13,
				["spellIds"] = {
				},
				["unit"] = "player",
				["use_percentpower"] = false,
				["use_unit"] = true,
				["use_powertype"] = true,
				["custom_hide"] = "timed",
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 11.4999980926514,
			["anchorPoint"] = "CENTER",
			["font"] = "PT Sans Narrow",
			["numTriggers"] = 2,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED PLAYER_REGEN_DISABLED PLAYER_REGEN_ENABLED UNIT_AURA",
						["check"] = "event",
						["custom_type"] = "status",
						["custom"] = "-- Insanity Bar -- By Twintop - Illidan-US - 2017/06/13\n-- HowToPriest Thread -- https://howtopriest.com/viewtopic.php?f=104&t=8339\n-- WAGO.IO Link -- https://wago.io/4yfC0kJVW\nfunction(event,time,type,_,sourceGUID,sourcename,_,_,destGUID,destname,_,_,spellid,spellname,_,_,_,_,_,_,_,spellcritical,_,_,_,_)\n    local CurrentTime = GetTime();\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" or event == \"COMBAT_LOG_EVENT\" then\n        \n        WA_Voidform_Total_Stacks = WA_Voidform_Total_Stacks or 0;\n        WA_Voidform_Previous_Stack_Time = WA_Voidform_Previous_Stack_Time or 0;\n        WA_Voidform_Drain_Stacks = WA_Voidform_Drain_Stacks or 0;\n        WA_Voidform_VoidTorrent_Stacks = WA_Voidform_VoidTorrent_Stacks or 0;\n        WA_Voidform_Dispersion_Stacks = WA_Voidform_Dispersion_Stacks or 0;\n        WA_Insanity_Bar_LI_Last_Tick = WA_Insanity_Bar_LI_Last_Tick or 0;\n        WA_Insanity_Bar_LI_Last_Count = WA_Insanity_Bar_LI_Last_Count or 0;\n        \n        local _, _, _, liCount, _, liDuration, _, _, _, _, liSpellId = UnitBuff(\"player\",GetSpellInfo(197937));\n        \n        local T20_head = 0;\n        if IsEquippedItem(147165) then\n            T20_head = 1;\n        end\n        \n        local T20_shoulder = 0;\n        if IsEquippedItem(147168) then\n            T20_shoulder = 1;\n        end\n        \n        local T20_back = 0;\n        if IsEquippedItem(147163) then\n            T20_back = 1;\n        end\n        \n        local T20_chest = 0;\n        if IsEquippedItem(147167) then\n            T20_chest = 1;\n        end\n        \n        local T20_hands = 0;\n        if IsEquippedItem(147164) then\n            T20_hands = 1;\n        end\n        \n        local T20_legs = 0;\n        if IsEquippedItem(147166) then\n            T20_legs = 1;\n        end\n        \n        WA_Voidform_T20_Count = T20_head + T20_shoulder + T20_back + T20_chest + T20_hands + T20_legs;\n        \n        \n        if liCount ~= nil and liCount > 0 then\n            \n            if WA_Insanity_Bar_LI_Last_Count ~= liCount then\n                \n                WA_Insanity_Bar_LI_Last_Count = liCount;\n                WA_Insanity_Bar_LI_Last_Tick = CurrentTime;\n                \n            end\n            \n        end\n        \n        if WA_Voidform_Total_Stacks >= 100 then\n            \n            if (CurrentTime - WA_Voidform_Previous_Stack_Time) >= 1 then\n                \n                WA_Voidform_Previous_Stack_Time = CurrentTime;\n                WA_Voidform_Total_Stacks = WA_Voidform_Total_Stacks + 1;\n                \n                \n                if WA_Voidform_VoidTorrent_Start == nil and WA_Voidform_Dispersion_Start == nil then\n                    \n                    WA_Voidform_Drain_Stacks = WA_Voidform_Drain_Stacks + 1;\n                    \n                elseif WA_Voidform_VoidTorrent_Start ~= nil then\n                    \n                    WA_Voidform_VoidTorrent_Stacks = WA_Voidform_VoidTorrent_Stacks + 1;\n                    \n                else\n                    \n                    WA_Voidform_Dispersion_Stacks = WA_Voidform_Dispersion_Stacks + 1;\n                    \n                end                \n            end\n            \n        end\n        \n        \n        if sourceGUID == UnitGUID(\"player\") then\n            \n            if spellid == 194249 then\n                \n                if type == \"SPELL_AURA_APPLIED\" then -- Entered Voidform\n                    \n                    WA_Voidform_Previous_Stack_Time = CurrentTime;\n                    WA_Voidform_VoidTorrent_Start = nil;\n                    WA_Voidform_Dispersion_Start = nil;\n                    WA_Voidform_Drain_Stacks = 1;\n                    WA_Voidform_Start_Time = CurrentTime;\n                    WA_Voidform_Total_Stacks = 1;\n                    WA_Voidform_VoidTorrent_Stacks = 0;\n                    WA_Voidform_Dispersion_Stacks = 0;\n                    \n                elseif type == \"SPELL_AURA_APPLIED_DOSE\" then -- New Voidform Stack\n                    \n                    WA_Voidform_Previous_Stack_Time = CurrentTime;\n                    WA_Voidform_Total_Stacks = WA_Voidform_Total_Stacks + 1;\n                    \n                    if WA_Voidform_VoidTorrent_Start == nil and WA_Voidform_Dispersion_Start == nil then\n                        \n                        WA_Voidform_Drain_Stacks = WA_Voidform_Drain_Stacks + 1;\n                        \n                    elseif WA_Voidform_VoidTorrent_Start ~= nil then\n                        \n                        WA_Voidform_VoidTorrent_Stacks = WA_Voidform_VoidTorrent_Stacks + 1;\n                        \n                    else\n                        \n                        WA_Voidform_Dispersion_Stacks = WA_Voidform_Dispersion_Stacks + 1;\n                        \n                    end\n                    \n                elseif type == \"SPELL_AURA_REMOVED\" then -- Exited Voidform\n                    if WA_Insanity_Bar_Voidform_Summary == true then\n                        print(\"Voidform Info:\");\n                        print(\"--------------------------\");\n                        print(string.format(\"Voidform Duration: %.2f seconds\", (CurrentTime-WA_Voidform_Start_Time)));\n                        \n                        if WA_Voidform_Total_Stacks > 100 then\n                            print(string.format(\"Voidform Stacks: 100 (+%.0f)\", (WA_Voidform_Total_Stacks-100)));\n                        else\n                            print(string.format(\"Voidform Stacks: %.0f\", WA_Voidform_Total_Stacks));\n                        end\n                        \n                        print(string.format(\"Dispersion Stacks: %.0f\", WA_Voidform_Dispersion_Stacks));\n                        print(string.format(\"Void Torrent Stacks: %.0f\", WA_Voidform_VoidTorrent_Stacks));\n                        print(string.format(\"Final Drain: %.0f stacks; %.1f / sec\", WA_Voidform_Drain_Stacks, WA_Voidform_Current_Drain_Rate));\n                    end\n                    \n                    WA_Voidform_VoidTorrent_Start = nil;\n                    WA_Voidform_Dispersion_Start = nil;\n                    WA_Voidform_Drain_Stacks = 0;\n                    WA_Voidform_Start_Time = nil;\n                    WA_Voidform_Total_Stacks = 0;\n                    WA_Voidform_VoidTorrent_Stacks = 0;\n                    WA_Voidform_Dispersion_Stacks = 0;\n                    \n                end\n                \n            elseif spellid == 205065 then\n                \n                if type == \"SPELL_AURA_APPLIED\" then -- Started channeling Void Torrent\n                    \n                    WA_Voidform_VoidTorrent_Start = CurrentTime;\n                    \n                elseif type == \"SPELL_AURA_REMOVED\" and WA_Voidform_VoidTorrent_Start ~= nil then -- Stopped channeling Void Torrent\n                    \n                    WA_Voidform_VoidTorrent_Start = nil;\n                    \n                end\n                \n            elseif spellid == 47585 then\n                \n                if type == \"SPELL_AURA_APPLIED\" then -- Started channeling Dispersion\n                    \n                    WA_Voidform_Dispersion_Start = CurrentTime;\n                    \n                elseif type == \"SPELL_AURA_REMOVED\" and WA_Voidform_Dispersion_Start ~= nil then -- Stopped channeling Dispersion\n                    \n                    WA_Voidform_Dispersion_Start = nil;\n                    \n                end\n                \n            elseif spellid == 212570 then\n                \n                if type == \"SPELL_AURA_APPLIED\" then -- Gain Surrender to Madness\n                    \n                    WA_Voidform_S2M_Activated = true;\n                    WA_Voidform_S2M_Start = CurrentTime;\n                    \n                end\n                \n            end\n            \n        elseif destGUID == UnitGUID(\"player\") and (type == \"UNIT_DIED\" or type == \"UNIT_DESTROYED\" or type == \"SPELL_INSTAKILL\") and WA_Voidform_S2M_Activated == true then\n            \n            WA_Voidform_S2M_Activated = false;\n            \n            if WA_Insanity_Bar_S2M_Wilhelm == true then\n                PlaySoundFile(\"Interface\\\\AddOns\\\\WeakAuras\\\\PowerAurasMedia\\\\Sounds\\\\wilhelm.ogg\", \"Master\");\n            end\n            \n            if WA_Insanity_Bar_S2M_Summary == true then\n                print(\"Surrender to Madness Info:\");\n                print(\"--------------------------\");\n                print(string.format(\"S2M Duration: %.2f seconds\", (CurrentTime-WA_Voidform_S2M_Start)));\n                print(string.format(\"Voidform Duration: %.2f seconds\", (CurrentTime-WA_Voidform_Start_Time)));\n                \n                if WA_Voidform_Total_Stacks > 100 then\n                    print(string.format(\"Voidform Stacks: 100 (+%.0f)\", (WA_Voidform_Total_Stacks-100)));\n                else\n                    print(string.format(\"Voidform Stacks: %.0f\", WA_Voidform_Total_Stacks));\n                end\n                \n                print(string.format(\"Dispersion Stacks: %.0f\", WA_Voidform_Dispersion_Stacks));\n                print(string.format(\"Void Torrent Stacks: %.0f\", WA_Voidform_VoidTorrent_Stacks));\n                print(string.format(\"Final Drain: %.0f stacks; %.1f / sec\", WA_Voidform_Drain_Stacks, WA_Voidform_Current_Drain_Rate));\n            end\n            \n            WA_Voidform_S2M_Start = nil;\n            WA_Voidform_VoidTorrent_Start = nil;\n            WA_Voidform_Dispersion_Start = nil;\n            WA_Voidform_Drain_Stacks = 0;\n            WA_Voidform_Start_Time = nil;\n            WA_Voidform_Total_Stacks = 0;\n            WA_Voidform_VoidTorrent_Stacks = 0;\n            WA_Voidform_Dispersion_Stacks = 0;\n            \n        end\n        \n    end \nend",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["height"] = 14.1666269302368,
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 0,
		},
		["Insanity Bar - Non-LotV Marker 1 2"] = {
			["color"] = {
				0.6156862745098, -- [1]
				0.6156862745098, -- [2]
				0.6156862745098, -- [3]
				0.75, -- [4]
			},
			["parent"] = "Priest - Shadow: Insanity Bar",
			["mirror"] = false,
			["untrigger"] = {
				["spellName"] = 228260,
			},
			["anchorPoint"] = "CENTER",
			["xOffset"] = 203,
			["blendMode"] = "ADD",
			["activeTriggerMode"] = 0,
			["conditions"] = {
			},
			["yOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Insanity Bar - Non-LotV Marker 1 2",
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_inverse"] = true,
				["use_unit"] = true,
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["custom_hide"] = "timed",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["type"] = "status",
				["use_health"] = true,
				["use_targetRequired"] = false,
				["power_operator"] = "<",
				["unit"] = "player",
				["event"] = "Action Usable",
				["spellIds"] = {
				},
				["realSpellName"] = "Void Eruption",
				["use_spellName"] = true,
				["health"] = "0",
				["health_operator"] = ">",
				["power"] = "100",
				["unevent"] = "auto",
				["spellName"] = 228260,
				["use_power"] = true,
			},
			["discrete_rotation"] = 0,
			["frameStrata"] = 6,
			["anchorFrameType"] = "SCREEN",
			["rotation"] = 0,
			["width"] = 1,
			["numTriggers"] = 2,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["inverse"] = true,
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Voidform", -- [1]
						},
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["height"] = 32,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						[20] = true,
						[21] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "texture",
		},
		["Priest - Shadow: Twist of Fate"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Twist of Fate", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 32,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Containment"] = "INSIDE",
			["text2Containment"] = "INSIDE",
			["yOffset"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["auto"] = true,
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "Priest - Shadow: Twist of Fate",
			["text2"] = "%p",
			["frameStrata"] = 1,
			["width"] = 32,
			["stickyDuration"] = false,
			["text2Point"] = "CENTER",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Priest - Shadow: Procs & Buffs",
		},
		["Insanity Bar - Text - Middle 2"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 14,
			["parent"] = "Priest - Shadow: Insanity Bar",
			["disjunctive"] = "all",
			["displayText"] = "%c",
			["customText"] = "function()\n    WA_Insanity_Bar_Color_Text_Current = WA_Insanity_Bar_Color_Text_Current or \"FFC2A3E0\";\n    WA_Insanity_Bar_Color_Text_Incoming = WA_Insanity_Bar_Color_Text_Incoming or \"FFFFFFFF\";\n    WA_Insanity_Bar_Color_Text_AS = WA_Insanity_Bar_Color_Text_AS or \"FFDF00FF\";\n    \n    WA_Voidform_Current_Insanity = UnitPower(\"player\", SPELL_POWER_SHADOW_ORBS, forceUpdate);\n    WA_Insanity_Bar_Current_Cast_Gain = WA_Insanity_Bar_Current_Cast_Gain or 0;\n    local Current_Cast_Gain = WA_Insanity_Bar_Current_Cast_Gain or 0;\n    WA_Insanity_Bar_AS_Gain = WA_Insanity_Bar_AS_Gain or 0;\n    WA_Insanity_Bar_Current_Cast_MindSear_Flag = WA_Insanity_Bar_Current_Cast_MindSear_Flag or 0;\n    \n    local specGroup = GetActiveSpecGroup();\n    local isFotMSelected = select(4, GetTalentInfo(1, 2, specGroup));   \n    local PIName = select(2, GetTalentInfo(6, 1, specGroup));\n    local isPIActive = select(11, UnitBuff(\"player\", PIName));\n    local S2MName = select(2, GetTalentInfo(7, 3, specGroup));\n    local isS2MActive = select(11, UnitBuff(\"player\", S2MName));\n    \n    if isPIActive or isFotMActive then\n        Current_Cast_Gain = string.format(\"%.2f\", Current_Cast_Gain);        \n    else\n        Current_Cast_Gain = string.format(\"%.0f\", Current_Cast_Gain);            \n    end\n    \n    \n    if isFotMSelected or isPIActive then\n        \n        if (WA_Insanity_Bar_Current_Cast_Gain > 0 and WA_Insanity_Bar_Show_Right_Incoming_Casting_Insanity) and (WA_Insanity_Bar_AS_Gain > 0 and WA_Insanity_Bar_Show_Right_Incoming_AS_Insanity) then\n            \n            return string.format(\"|c%s%s|r + |c%s%.2f|r + |c%s%.0f%%|r\", WA_Insanity_Bar_Color_Text_Incoming, Current_Cast_Gain, WA_Insanity_Bar_Color_Text_AS, WA_Insanity_Bar_AS_Gain, WA_Insanity_Bar_Color_Text_Current, WA_Voidform_Current_Insanity);\n            \n        elseif (WA_Insanity_Bar_Current_Cast_Gain > 0 and WA_Insanity_Bar_Show_Right_Incoming_Casting_Insanity) then\n            \n            return string.format(\"|c%s%s|r + |c%s%.0f%%|r\", WA_Insanity_Bar_Color_Text_Incoming, Current_Cast_Gain, WA_Insanity_Bar_Color_Text_Current, WA_Voidform_Current_Insanity);\n            \n        elseif (WA_Insanity_Bar_AS_Gain > 0 and WA_Insanity_Bar_Show_Right_Incoming_AS_Insanity) then\n            \n            return string.format(\"|c%s%.2f|r + |c%s%.0f%%|r\", WA_Insanity_Bar_Color_Text_AS, WA_Insanity_Bar_AS_Gain, WA_Insanity_Bar_Color_Text_Current, WA_Voidform_Current_Insanity);\n            \n        else\n            \n            return string.format(\"|c%s%.0f%%|r\", WA_Insanity_Bar_Color_Text_Current, WA_Voidform_Current_Insanity);        \n        end\n        \n    else\n        \n        if (WA_Insanity_Bar_Current_Cast_Gain > 0 and WA_Insanity_Bar_Show_Right_Incoming_Casting_Insanity) and (WA_Insanity_Bar_AS_Gain > 0 and WA_Insanity_Bar_Show_Right_Incoming_AS_Insanity) then\n            \n            return string.format(\"|c%s%s|r + |c%s%.0f|r + |c%s%.0f%%|r\", WA_Insanity_Bar_Color_Text_Incoming, Current_Cast_Gain, WA_Insanity_Bar_Color_Text_AS, WA_Insanity_Bar_AS_Gain, WA_Insanity_Bar_Color_Text_Current, WA_Voidform_Current_Insanity);\n            \n        elseif (WA_Insanity_Bar_Current_Cast_Gain > 0 and WA_Insanity_Bar_Show_Right_Incoming_Casting_Insanity) then\n            \n            return string.format(\"|c%s%s|r + |c%s%.0f%%|r\", WA_Insanity_Bar_Color_Text_Incoming, Current_Cast_Gain, WA_Insanity_Bar_Color_Text_Current, WA_Voidform_Current_Insanity);\n            \n        elseif (WA_Insanity_Bar_AS_Gain > 0 and WA_Insanity_Bar_Show_Right_Incoming_AS_Insanity) then\n            \n            return string.format(\"|c%s%.0f|r + |c%s%.0f%%|r\", WA_Insanity_Bar_Color_Text_AS, WA_Insanity_Bar_AS_Gain, WA_Insanity_Bar_Color_Text_Current, WA_Voidform_Current_Insanity)\n            ;\n        else\n            return string.format(\"|c%s%.0f%%|r\", WA_Insanity_Bar_Color_Text_Current, WA_Voidform_Current_Insanity);        \n        end\n        \n    end\n    \nend",
			["untrigger"] = {
			},
			["regionType"] = "text",
			["xOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["use_power"] = true,
				["event"] = "Power",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["powertype"] = 13,
				["spellIds"] = {
				},
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["use_powertype"] = true,
				["custom_hide"] = "timed",
			},
			["justify"] = "CENTER",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 6,
			["width"] = 11.4999980926514,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["font"] = "PT Sans Narrow",
			["numTriggers"] = 1,
			["id"] = "Insanity Bar - Text - Middle 2",
			["height"] = 14.1666269302368,
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 0,
		},
		["Priest - Shadow: Vampiric Embrace"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Vampiric Embrace", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 32,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 16,
					["multi"] = {
						[16] = true,
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Containment"] = "INSIDE",
			["text2Containment"] = "INSIDE",
			["yOffset"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["auto"] = true,
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "Priest - Shadow: Vampiric Embrace",
			["text2"] = "%p",
			["frameStrata"] = 1,
			["width"] = 32,
			["stickyDuration"] = false,
			["text2Point"] = "CENTER",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Priest - Shadow: Procs & Buffs",
		},
		["Insanity Bar - Non-LotV Marker 2"] = {
			["color"] = {
				0.70980392156863, -- [1]
				0.70980392156863, -- [2]
				0.70980392156863, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["spellName"] = 228260,
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["regionType"] = "texture",
			["anchorPoint"] = "CENTER",
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = 0,
			["rotate"] = true,
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["selfPoint"] = "CENTER",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
							"Voidform", -- [1]
						},
						["spellIds"] = {
						},
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["inverse"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["width"] = 2,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 0.52549019607843,
					["scalex"] = 1.75,
					["alphaType"] = "alphaPulse",
					["colorB"] = 1,
					["colorG"] = 0,
					["alphaFunc"] = "    function(progress, start, delta)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return start + (((math.sin(angle) + 1)/2) * delta)\n    end\n  ",
					["use_alpha"] = true,
					["use_color"] = false,
					["scaleType"] = "pulse",
					["colorA"] = 1,
					["use_scale"] = false,
					["scaley"] = 1.5,
					["alpha"] = 0.25,
					["colorType"] = "straightColor",
					["y"] = 0,
					["x"] = 0,
					["type"] = "custom",
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\n    end\n  ",
					["colorFunc"] = "function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      return r1 + (progress * (r2 - r1)), g1 + (progress * (g2 - g1)), b1 + (progress * (b2 - b1)), a1 + (progress * (a2 - a1))\n    end\n  ",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["duration"] = ".5",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Insanity Bar - Non-LotV Marker 2",
			["desaturate"] = false,
			["frameStrata"] = 6,
			["anchorFrameType"] = "SCREEN",
			["rotation"] = 0,
			["discrete_rotation"] = 0,
			["numTriggers"] = 2,
			["trigger"] = {
				["use_power"] = true,
				["unit"] = "player",
				["spellName"] = 228260,
				["custom_hide"] = "timed",
				["power"] = "100",
				["type"] = "status",
				["use_health"] = true,
				["health_operator"] = ">",
				["power_operator"] = ">=",
				["use_unit"] = true,
				["event"] = "Action Usable",
				["unevent"] = "auto",
				["realSpellName"] = "Void Eruption",
				["use_spellName"] = true,
				["health"] = "0",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["height"] = 32,
			["conditions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						[20] = true,
						[21] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["use_talent"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 150,
		},
		["Insanity Bar - Non-LotV Marker 2 2"] = {
			["parent"] = "Priest - Shadow: Insanity Bar",
			["color"] = {
				0.70980392156863, -- [1]
				0.70980392156863, -- [2]
				0.70980392156863, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["mirror"] = false,
			["untrigger"] = {
				["spellName"] = 228260,
			},
			["regionType"] = "texture",
			["conditions"] = {
			},
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = 0,
			["anchorPoint"] = "CENTER",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_power"] = true,
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["spellName"] = 228260,
				["names"] = {
				},
				["type"] = "status",
				["use_health"] = true,
				["power"] = "100",
				["power_operator"] = ">=",
				["debuffType"] = "HELPFUL",
				["event"] = "Action Usable",
				["subeventSuffix"] = "_CAST_START",
				["realSpellName"] = "Void Eruption",
				["use_spellName"] = true,
				["health"] = "0",
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["use_unit"] = true,
				["health_operator"] = ">",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 0.52549019607843,
					["scalex"] = 1.75,
					["alphaType"] = "alphaPulse",
					["colorB"] = 1,
					["colorG"] = 0,
					["alphaFunc"] = "    function(progress, start, delta)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return start + (((math.sin(angle) + 1)/2) * delta)\n    end\n  ",
					["use_alpha"] = true,
					["scaley"] = 1.5,
					["scaleType"] = "pulse",
					["duration"] = ".5",
					["duration_type"] = "seconds",
					["use_color"] = false,
					["alpha"] = 0.25,
					["x"] = 0,
					["y"] = 0,
					["colorType"] = "straightColor",
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\n    end\n  ",
					["type"] = "custom",
					["colorFunc"] = "function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      return r1 + (progress * (r2 - r1)), g1 + (progress * (g2 - g1)), b1 + (progress * (b2 - b1)), a1 + (progress * (a2 - a1))\n    end\n  ",
					["rotate"] = 0,
					["use_scale"] = false,
					["colorA"] = 1,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Insanity Bar - Non-LotV Marker 2 2",
			["discrete_rotation"] = 0,
			["frameStrata"] = 6,
			["anchorFrameType"] = "SCREEN",
			["rotation"] = 0,
			["width"] = 2,
			["numTriggers"] = 2,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
							"Voidform", -- [1]
						},
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["inverse"] = true,
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["height"] = 32,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["single"] = 19,
					["multi"] = {
						[20] = true,
						[21] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_talent"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 203,
		},
		["Priest - Shadow: Mark of the Claw"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["names"] = {
					"Mark of the Claw", -- [1]
				},
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 32,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "fade",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Containment"] = "INSIDE",
			["text2Containment"] = "INSIDE",
			["yOffset"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0,
			["auto"] = true,
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "Priest - Shadow: Mark of the Claw",
			["text2"] = "%p",
			["frameStrata"] = 1,
			["width"] = 32,
			["stickyDuration"] = false,
			["text2Point"] = "CENTER",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "Priest - Shadow: Procs & Buffs",
		},
		["Insanity Bar - LotV Marker 2 2"] = {
			["xOffset"] = 61,
			["regionType"] = "texture",
			["parent"] = "Priest - Shadow: Insanity Bar",
			["conditions"] = {
			},
			["mirror"] = false,
			["untrigger"] = {
				["spellName"] = 228260,
			},
			["anchorPoint"] = "CENTER",
			["blendMode"] = "BLEND",
			["activeTriggerMode"] = 0,
			["yOffset"] = 0,
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
							"Voidform", -- [1]
						},
						["inverse"] = true,
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["trigger"] = {
				["use_power"] = true,
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["spellName"] = 228260,
				["names"] = {
				},
				["type"] = "status",
				["use_health"] = true,
				["power"] = "60",
				["power_operator"] = ">=",
				["debuffType"] = "HELPFUL",
				["event"] = "Action Usable",
				["subeventSuffix"] = "_CAST_START",
				["realSpellName"] = "Void Eruption",
				["use_spellName"] = true,
				["health"] = "0",
				["spellIds"] = {
				},
				["unevent"] = "auto",
				["use_unit"] = true,
				["health_operator"] = ">",
				["custom_hide"] = "timed",
			},
			["discrete_rotation"] = 0,
			["selfPoint"] = "CENTER",
			["id"] = "Insanity Bar - LotV Marker 2 2",
			["desaturate"] = false,
			["frameStrata"] = 6,
			["width"] = 2,
			["rotation"] = 0,
			["anchorFrameType"] = "SCREEN",
			["numTriggers"] = 2,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\n    end\n  ",
					["scalex"] = 1.75,
					["alphaType"] = "alphaPulse",
					["colorA"] = 1,
					["colorG"] = 0,
					["alphaFunc"] = "    function(progress, start, delta)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return start + (((math.sin(angle) + 1)/2) * delta)\n    end\n  ",
					["use_alpha"] = false,
					["use_color"] = false,
					["scaleType"] = "pulse",
					["duration_type"] = "seconds",
					["duration"] = ".5",
					["scaley"] = 1.5,
					["alpha"] = 0.75,
					["x"] = 0,
					["y"] = 0,
					["colorType"] = "straightColor",
					["colorR"] = 0.52549019607843,
					["type"] = "custom",
					["colorFunc"] = "function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      return r1 + (progress * (r2 - r1)), g1 + (progress * (g2 - g1)), b1 + (progress * (b2 - b1)), a1 + (progress * (a2 - a1))\n    end\n  ",
					["rotate"] = 0,
					["use_scale"] = false,
					["colorB"] = 1,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["height"] = 32,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["single"] = 19,
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["color"] = {
				0.70980392156863, -- [1]
				0.70980392156863, -- [2]
				0.70980392156863, -- [3]
				1, -- [4]
			},
		},
		["Priest - Shadow: Void Tendril Tracker"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Void Tendril Counter", -- [1]
				"Void Tendril Timer", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["border"] = false,
			["untrigger"] = {
			},
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["xOffset"] = -140,
			["url"] = "https://wago.io/H1GixBd3-/1",
			["expanded"] = false,
			["borderEdge"] = "None",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderOffset"] = 5,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Priest - Shadow: Void Tendril Tracker",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["version"] = 1,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["selfPoint"] = "BOTTOMLEFT",
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 0,
		},
		["Insanity Bar - Text - Left 2"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 14,
			["xOffset"] = -204,
			["parent"] = "Priest - Shadow: Insanity Bar",
			["displayText"] = " %c",
			["customText"] = "function()\n    \n    local haste = UnitSpellHaste(\"player\");\n    local _, _, _, liCount, _, liDuration, _, _, _, _, liSpellId = UnitBuff(\"player\",GetSpellInfo(197937));\n    WA_Insanity_Bar_Color_Text_Left = WA_Insanity_Bar_Color_Text_Left or \"00FFFFFF\";\n    \n    local returnString = string.format(\"|c%s%.2f%%\", WA_Insanity_Bar_Color_Text_Left, haste);\n    \n    if WA_Insanity_getRemainingTimeAndStackCount ~= nil then\n        local remainingTime, stackCount, moreStacks = WA_Insanity_getRemainingTimeAndStackCount();        \n        \n        WA_Insanity_Bar_Color_Text_Left = WA_Insanity_Bar_Color_Text_Left or \"00FFFFFF\";\n        \n        if stackCount > 0 then\n            \n            returnString = returnString .. string.format(\" - %.0f\", stackCount);\n            \n            if WA_Insanity_Bar_Show_Left_Voidform_Incoming_Stacks then\n                \n                returnString = returnString .. string.format(\" (+%.0f)\", moreStacks);\n                \n            end\n            \n            returnString = returnString .. string.format(\" VF\");\n            \n        else\n            \n            if WA_Insanity_Bar_Show_Left_Lingering_Insanity_Left and liCount ~= nil and liCount > 0 then\n                \n                returnString = returnString .. string.format(\" - %.0f LI\", liCount);\n                \n            end \n            \n        end\n    end\n    return returnString;\nend",
			["untrigger"] = {
			},
			["regionType"] = "text",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["init_completed"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["trigger"] = {
				["type"] = "status",
				["unevent"] = "auto",
				["debuffType"] = "HELPFUL",
				["use_power"] = true,
				["event"] = "Power",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["powertype"] = 13,
				["spellIds"] = {
				},
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["use_powertype"] = true,
				["custom_hide"] = "timed",
			},
			["justify"] = "CENTER",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["additional_triggers"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 6,
			["width"] = 11.4999980926514,
			["id"] = "Insanity Bar - Text - Left 2",
			["font"] = "PT Sans Narrow",
			["numTriggers"] = 1,
			["selfPoint"] = "LEFT",
			["height"] = 14.1666269302368,
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["disjunctive"] = "all",
		},
		["Insanity Bar - Main Bar 2"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["xOffset"] = -6.1035156250e-005,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_frame"] = "WeakAuras:Insanity Bar - Main Bar",
					["do_custom"] = false,
					["glow_action"] = "show",
				},
				["init"] = {
				},
				["finish"] = {
					["do_sound"] = false,
					["sound"] = " custom",
					["sound_channel"] = "SFX",
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.38039215686275, -- [1]
				0, -- [2]
				0.75686274509804, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
						["ROGUE"] = true,
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["init_completed"] = 1,
			["texture"] = "ElvUI Norm",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 1,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				0.99607843137255, -- [2]
				0.98039215686274, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "None",
			["color"] = {
			},
			["customText"] = "-- Insanity Bar -- By Twintop - Illidan-US, 2016/07/27\nfunction()\n    return \"\";\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["untrigger"] = {
			},
			["activeTriggerMode"] = 0,
			["sparkRotationMode"] = "AUTO",
			["textSize"] = 18,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = ".75",
					["alphaType"] = "alphaPulse",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function(progress, start, delta)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return start + (((math.sin(angle) + 1)/2) * delta)\n    end\n  ",
					["use_alpha"] = false,
					["type"] = "custom",
					["scaley"] = 1,
					["alpha"] = 0.3,
					["duration_type"] = "seconds",
					["y"] = 0,
					["x"] = 0,
					["use_color"] = true,
					["colorType"] = "custom",
					["colorFunc"] = "-- Insanity Bar -- By Twintop - Illidan-US - 2017/06/13\n-- HowToPriest Thread -- https://howtopriest.com/viewtopic.php?f=104&t=8339\n-- WAGO.IO Link -- https://wago.io/4yfC0kJVW\nfunction(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    \n    WA_Insanity_Bar_Color_Bar_Status1 = WA_Insanity_Bar_Color_Bar_Status1 or \"FF763BAF\";\n    WA_Insanity_Bar_Color_Bar_Status2 = WA_Insanity_Bar_Color_Bar_Status2 or \"FF5C2F89\";\n    WA_Insanity_Bar_Color_Bar_Status3 = WA_Insanity_Bar_Color_Bar_Status3 or\"FF431863\";\n    WA_Insanity_Bar_Color_Bar_Status3_Warning = WA_Insanity_Bar_Color_Bar_Status3_Warning or\"FFFFFF00\";\n    WA_Insanity_Bar_Color_Bar_Status3_End = WA_Insanity_Bar_Color_Bar_Status3_End or\"FFFF0000\";\n    \n    WA_Voidform_Drain_Stacks = WA_Voidform_Drain_Stacks or 0;\n    WA_Voidform_Current_Insanity = WA_Voidform_Current_Insanity or 0;\n    \n    local specGroup = GetActiveSpecGroup();\n    local isLotVSelected = select(4, GetTalentInfo(7, 1, specGroup));\n    local a = 1;\n    local r = 0;\n    local g = 0;\n    local b = 0;\n    \n    if WA_Voidform_Drain_Stacks > 0 then\n        local haste = UnitSpellHaste(\"player\") / 100;\n        \n        local gcd = 1.5 / (1 + haste);\n        \n        if gcd < 0.75 then\n            \n            gcd = 0.75;\n            \n        end\n        \n        if gcd > WA_Voidform_Remaining_Time then        \n            \n            r, g, b, a = getRGBAFromString(WA_Insanity_Bar_Color_Bar_Status3_End);  \n            \n        elseif gcd*2 > WA_Voidform_Remaining_Time then\n            \n            r, g, b, a = getRGBAFromString(WA_Insanity_Bar_Color_Bar_Status3_Warning);  \n            \n        else\n            \n            r, g, b, a = getRGBAFromString(WA_Insanity_Bar_Color_Bar_Status3);  \n            \n        end\n        \n        \n    elseif WA_Voidform_Current_Insanity == 100 or (isLotVSelected and WA_Voidform_Current_Insanity >= 65) then\n        \n        r, g, b, a = getRGBAFromString(WA_Insanity_Bar_Color_Bar_Status2);\n        \n    else\n        \n        r, g, b, a = getRGBAFromString(WA_Insanity_Bar_Color_Bar_Status1);\n        \n    end\n    \n    return r/255, g/255, b/255, a/255;\nend",
					["rotate"] = 0,
					["scalex"] = 1,
					["colorA"] = 1,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["use_power"] = true,
				["event"] = "Power",
				["use_percentpower"] = false,
				["names"] = {
				},
				["powertype"] = 13,
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["use_unit"] = true,
				["use_powertype"] = true,
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["parent"] = "Priest - Shadow: Insanity Bar",
			["stickyDuration"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["disjunctive"] = "any",
			["sparkColor"] = {
				0.95294117647059, -- [1]
				0.94117647058823, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["height"] = 26,
			["timerFlags"] = "OUTLINE",
			["inverse"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.31410133838654, -- [4]
			},
			["timer"] = false,
			["customTextUpdate"] = "update",
			["anchorFrameType"] = "SCREEN",
			["sparkRotation"] = 0,
			["barInFront"] = true,
			["border"] = true,
			["borderEdge"] = "1 Pixel",
			["sparkHidden"] = "NEVER",
			["borderSize"] = 1,
			["id"] = "Insanity Bar - Main Bar 2",
			["icon_side"] = "RIGHT",
			["displayTextRight"] = " ",
			["sparkOffsetX"] = 0,
			["sparkHeight"] = 30,
			["useAdjustededMax"] = false,
			["stacksFont"] = "Friz Quadrata TT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 18,
			["textFlags"] = "None",
			["additional_triggers"] = {
			},
			["displayTextLeft"] = " ",
			["frameStrata"] = 4,
			["width"] = 407,
			["zoom"] = 0,
			["auto"] = true,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["backgroundColor"] = {
				0.054901960784314, -- [1]
				0.054901960784314, -- [2]
				0.054901960784314, -- [3]
				0, -- [4]
			},
			["icon"] = false,
		},
	},
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -205.833374023438,
		["yOffset"] = -258.166625976563,
		["height"] = 492,
		["width"] = 630.000061035156,
	},
	["editor_theme"] = "Monokai",
}
