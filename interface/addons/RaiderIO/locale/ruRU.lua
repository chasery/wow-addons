local _, ns = ...

if ns:IsSameLocale("ruRU") then
	local L = ns.L or ns:NewLocale()

	L.LOCALE_NAME = "ruRU"

L["ALLOW_IN_LFD"] = "Разрешить в Поиске подземелья"
--Translation missing 
-- L["ALLOW_IN_LFD_DESC"] = ""
--Translation missing 
-- L["ALLOW_ON_PLAYER_UNITS"] = ""
--Translation missing 
-- L["ALLOW_ON_PLAYER_UNITS_DESC"] = ""
--Translation missing 
-- L["ALWAYS_SHOW_EXTENDED_INFO"] = ""
--Translation missing 
-- L["ALWAYS_SHOW_EXTENDED_INFO_DESC"] = ""
L["BEST_FOR_DUNGEON"] = "Лучшее для подземелья"
L["BEST_RUN"] = "Лучший"
L["CHANGES_REQUIRES_UI_RELOAD"] = [=[Изменения были сохранены, но необходимо перезагрузить интерфейс, чтобы они вступили в силу.

Ты хочешь сделать это сейчас?]=]
L["COPY_RAIDERIO_PROFILE_URL"] = "Копировать URL профиль Raider.IO"
L["COPY_RAIDERIO_URL"] = "Копировать Raider.IO URL"
L["DPS"] = "DPS"
L["DPS_SCORE"] = "DPS Score"
L["ENABLE_NO_SCORE_COLORS"] = "Отключить цвета оценки"
--Translation missing 
-- L["ENABLE_NO_SCORE_COLORS_DESC"] = ""
--Translation missing 
-- L["ENABLE_SIMPLE_SCORE_COLORS"] = ""
--Translation missing 
-- L["ENABLE_SIMPLE_SCORE_COLORS_DESC"] = ""
L["HEALER"] = "Целитель"
L["HEALER_SCORE"] = "Результат Целителя"
L["KEYSTONE_COMPLETED_10"] = "+10 (KSC)"
L["KEYSTONE_COMPLETED_15"] = "+15 (KSM)"
L["KEYSTONE_COMPLETED_5"] = "+5 (KSI)"
--Translation missing 
-- L["MAINS_SCORE"] = ""
--Translation missing 
-- L["MAINS_SCORE_COLON"] = ""
--Translation missing 
-- L["MYTHIC_PLUS_DB_MODULES"] = ""
--Translation missing 
-- L["MYTHIC_PLUS_SCORES"] = ""
L["OPEN_CONFIG"] = "Открыть конфигурацию"
--Translation missing 
-- L["OUTDATED_DATABASE"] = ""
--Translation missing 
-- L["OUTDATED_DATABASE_S"] = ""
--Translation missing 
-- L["PREV_SEASON_COLON"] = ""
--Translation missing 
-- L["PREV_SEASON_SCORE"] = ""
--Translation missing 
-- L["RAIDERIO_MP_SCORE"] = ""
--Translation missing 
-- L["RAIDERIO_MP_SCORE_COLON"] = ""
--Translation missing 
-- L["RAIDERIO_MYTHIC_OPTIONS"] = ""
--Translation missing 
-- L["RELOAD_LATER"] = ""
L["RELOAD_NOW"] = "Перезагрузить страницу"
--Translation missing 
-- L["SHOW_IN_FRIENDS"] = ""
--Translation missing 
-- L["SHOW_IN_FRIENDS_DESC"] = ""
--Translation missing 
-- L["SHOW_IN_LFD"] = ""
--Translation missing 
-- L["SHOW_IN_LFD_DESC"] = ""
--Translation missing 
-- L["SHOW_IN_SLASH_WHO_RESULTS"] = ""
--Translation missing 
-- L["SHOW_IN_SLASH_WHO_RESULTS_DESC"] = ""
--Translation missing 
-- L["SHOW_IN_WHO_UI"] = ""
--Translation missing 
-- L["SHOW_IN_WHO_UI_DESC"] = ""
--Translation missing 
-- L["SHOW_KEYSTONE_INFO"] = ""
--Translation missing 
-- L["SHOW_KEYSTONE_INFO_DESC"] = ""
--Translation missing 
-- L["SHOW_MAINS_SCORE"] = ""
--Translation missing 
-- L["SHOW_MAINS_SCORE_DESC"] = ""
--Translation missing 
-- L["SHOW_ON_GUILD_ROSTER"] = ""
--Translation missing 
-- L["SHOW_ON_GUILD_ROSTER_DESC"] = ""
--Translation missing 
-- L["SHOW_ON_PLAYER_UNITS"] = ""
--Translation missing 
-- L["SHOW_ON_PLAYER_UNITS_DESC"] = ""
--Translation missing 
-- L["SHOW_PREV_SEASON_SCORE"] = ""
--Translation missing 
-- L["SHOW_PREV_SEASON_SCORE_DESC"] = ""
L["TANK"] = "Танк"
L["TANK_SCORE"] = "Результат Танка"
--Translation missing 
-- L["TOOLTIP_CUSTOMIZATION"] = ""
--Translation missing 
-- L["UNKNOWN_SERVER_FOUND"] = ""


	ns.L = L
end
