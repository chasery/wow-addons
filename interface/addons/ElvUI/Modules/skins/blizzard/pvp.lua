local E, L, V, P, G = unpack(select(2, ...)); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local S = E:GetModule('Skins')

local function LoadSkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.pvp ~= true then return end

	PVPUIFrame:StripTextures()

	for i = 1, 2 do
		S:HandleTab(_G["PVPUIFrameTab"..i])
	end

	for i = 1, 4 do
		local bu = _G["PVPQueueFrameCategoryButton"..i]

		bu.Ring:Kill()
		bu.Background:Kill()

		bu:SetTemplate()
		bu:StyleButton(nil, true)

		bu.Icon:SetTexCoord(.15, .85, .15, .85)
		bu.Icon:Point("LEFT", bu, "LEFT")
		bu.Icon:SetDrawLayer("OVERLAY")
		bu.Icon:Size(45)
		bu.Icon:ClearAllPoints()
		bu.Icon:Point("LEFT", 10, 0)
		bu.border = CreateFrame("Frame", nil, bu)
		bu.border:SetTemplate("Default")
		bu.border:SetOutside(bu.Icon)
		bu.Icon:SetParent(bu.border)
	end

	-- Honor Frame
	S:HandleDropDownBox(HonorFrameTypeDropDown, 210)

	HonorFrame.Inset:StripTextures()

	S:HandleScrollBar(HonorFrameSpecificFrameScrollBar)
	S:HandleButton(HonorFrameQueueButton, true)
	HonorFrame.BonusFrame:StripTextures()
	HonorFrame.BonusFrame.ShadowOverlay:StripTextures()
	HonorFrame.BonusFrame.RandomBGButton:StripTextures()
	HonorFrame.BonusFrame.RandomBGButton:SetTemplate()
	HonorFrame.BonusFrame.RandomBGButton:StyleButton(nil, true)
	HonorFrame.BonusFrame.RandomBGButton.SelectedTexture:SetInside()
	HonorFrame.BonusFrame.RandomBGButton.SelectedTexture:SetColorTexture(1, 1, 0, 0.1)

	HonorFrame.BonusFrame.Arena1Button:StripTextures()
	HonorFrame.BonusFrame.Arena1Button:SetTemplate()
	HonorFrame.BonusFrame.Arena1Button:StyleButton(nil, true)
	HonorFrame.BonusFrame.Arena1Button.SelectedTexture:SetInside()
	HonorFrame.BonusFrame.Arena1Button.SelectedTexture:SetColorTexture(1, 1, 0, 0.1)

	HonorFrame.BonusFrame.AshranButton:StripTextures()
	HonorFrame.BonusFrame.AshranButton:SetTemplate()
	HonorFrame.BonusFrame.AshranButton:StyleButton(nil, true)
	HonorFrame.BonusFrame.AshranButton.SelectedTexture:SetInside()
	HonorFrame.BonusFrame.AshranButton.SelectedTexture:SetColorTexture(1, 1, 0, 0.1)

	HonorFrame.BonusFrame.BrawlButton:StripTextures()
	HonorFrame.BonusFrame.BrawlButton:SetTemplate()
	HonorFrame.BonusFrame.BrawlButton:StyleButton(nil, true)
	HonorFrame.BonusFrame.BrawlButton.SelectedTexture:SetInside()
	HonorFrame.BonusFrame.BrawlButton.SelectedTexture:SetColorTexture(1, 1, 0, 0.1)

	HonorFrame.BonusFrame.DiceButton:DisableDrawLayer("ARTWORK")
	HonorFrame.BonusFrame.DiceButton:SetHighlightTexture("")

	HonorFrame.RoleInset:StripTextures()
	S:HandleCheckBox(HonorFrame.RoleInset.DPSIcon.checkButton, true)
	S:HandleCheckBox(HonorFrame.RoleInset.TankIcon.checkButton, true)
	S:HandleCheckBox(HonorFrame.RoleInset.HealerIcon.checkButton, true)

	HonorFrame.RoleInset.TankIcon:DisableDrawLayer("ARTWORK")
	HonorFrame.RoleInset.TankIcon:DisableDrawLayer("OVERLAY")
	HonorFrame.RoleInset.TankIcon.bg = HonorFrame.RoleInset.TankIcon:CreateTexture(nil, 'BACKGROUND')
	HonorFrame.RoleInset.TankIcon.bg:SetTexture("Interface\\LFGFrame\\UI-LFG-ICONS-ROLEBACKGROUNDS")
	HonorFrame.RoleInset.TankIcon.bg:SetTexCoord(LFDQueueFrameRoleButtonTank.background:GetTexCoord())
	HonorFrame.RoleInset.TankIcon.bg:Point('CENTER')
	HonorFrame.RoleInset.TankIcon.bg:Size(80)
	HonorFrame.RoleInset.TankIcon.bg:SetAlpha(0.5)

	HonorFrame.RoleInset.HealerIcon:DisableDrawLayer("ARTWORK")
	HonorFrame.RoleInset.HealerIcon:DisableDrawLayer("OVERLAY")
	HonorFrame.RoleInset.HealerIcon.bg = HonorFrame.RoleInset.HealerIcon:CreateTexture(nil, 'BACKGROUND')
	HonorFrame.RoleInset.HealerIcon.bg:SetTexture("Interface\\LFGFrame\\UI-LFG-ICONS-ROLEBACKGROUNDS")
	HonorFrame.RoleInset.HealerIcon.bg:SetTexCoord(LFDQueueFrameRoleButtonHealer.background:GetTexCoord())
	HonorFrame.RoleInset.HealerIcon.bg:Point('CENTER')
	HonorFrame.RoleInset.HealerIcon.bg:Size(80)
	HonorFrame.RoleInset.HealerIcon.bg:SetAlpha(0.5)

	HonorFrame.RoleInset.DPSIcon:DisableDrawLayer("ARTWORK")
	HonorFrame.RoleInset.DPSIcon:DisableDrawLayer("OVERLAY")
	HonorFrame.RoleInset.DPSIcon.bg = HonorFrame.RoleInset.DPSIcon:CreateTexture(nil, 'BACKGROUND')
	HonorFrame.RoleInset.DPSIcon.bg:SetTexture("Interface\\LFGFrame\\UI-LFG-ICONS-ROLEBACKGROUNDS")
	HonorFrame.RoleInset.DPSIcon.bg:SetTexCoord(LFDQueueFrameRoleButtonDPS.background:GetTexCoord())
	HonorFrame.RoleInset.DPSIcon.bg:Point('CENTER')
	HonorFrame.RoleInset.DPSIcon.bg:Size(80)
	HonorFrame.RoleInset.DPSIcon.bg:SetAlpha(0.5)

	-- HonorBar
	local honorBar = HonorFrame.XPBar
	local bar = honorBar.Bar
	local text = honorBar.Bar.OverlayFrame.Text
	local nextAvailable = honorBar.NextAvailable
	local icon = nextAvailable.Icon

	honorBar:StripTextures()

	bar:CreateBackdrop("Default")
	bar.Spark:SetAlpha(0)

	text:ClearAllPoints()
	text:Point("CENTER", bar)

	nextAvailable:StripTextures()
	nextAvailable:CreateBackdrop("Default")
	nextAvailable.backdrop:SetPoint("TOPLEFT", HonorFrame.XPBar.NextAvailable.Icon, -2, 2)
	nextAvailable.backdrop:SetPoint("BOTTOMRIGHT", HonorFrame.XPBar.NextAvailable.Icon, 2, -2)
	nextAvailable:ClearAllPoints()
	nextAvailable:SetPoint("LEFT", bar, "RIGHT", 0, -2)

	icon:SetDrawLayer("ARTWORK")
	icon:SetTexCoord(unpack(E.TexCoords))
	icon.SetTexCoord = E.noop

	hooksecurefunc("LFG_PermanentlyDisableRoleButton", function(self)
		if self.bg then
			self.bg:SetDesaturated(true)
		end
	end)

	-- Conquest Frame
	ConquestFrame.Inset:StripTextures()
	ConquestFrame:StripTextures()
	ConquestFrame.ShadowOverlay:StripTextures()
	S:HandleButton(ConquestJoinButton, true)

	ConquestFrame.RoleInset:StripTextures()
	S:HandleCheckBox(ConquestFrame.RoleInset.DPSIcon.checkButton, true)
	S:HandleCheckBox(ConquestFrame.RoleInset.TankIcon.checkButton, true)
	S:HandleCheckBox(ConquestFrame.RoleInset.HealerIcon.checkButton, true)

	ConquestFrame.RoleInset.TankIcon:DisableDrawLayer("ARTWORK")
	ConquestFrame.RoleInset.TankIcon:DisableDrawLayer("OVERLAY")
	ConquestFrame.RoleInset.TankIcon.bg = ConquestFrame.RoleInset.TankIcon:CreateTexture(nil, 'BACKGROUND')
	ConquestFrame.RoleInset.TankIcon.bg:SetTexture("Interface\\LFGFrame\\UI-LFG-ICONS-ROLEBACKGROUNDS")
	ConquestFrame.RoleInset.TankIcon.bg:SetTexCoord(LFDQueueFrameRoleButtonTank.background:GetTexCoord())
	ConquestFrame.RoleInset.TankIcon.bg:Point('CENTER')
	ConquestFrame.RoleInset.TankIcon.bg:Size(80)
	ConquestFrame.RoleInset.TankIcon.bg:SetAlpha(0.5)

	ConquestFrame.RoleInset.HealerIcon:DisableDrawLayer("ARTWORK")
	ConquestFrame.RoleInset.HealerIcon:DisableDrawLayer("OVERLAY")
	ConquestFrame.RoleInset.HealerIcon.bg = ConquestFrame.RoleInset.HealerIcon:CreateTexture(nil, 'BACKGROUND')
	ConquestFrame.RoleInset.HealerIcon.bg:SetTexture("Interface\\LFGFrame\\UI-LFG-ICONS-ROLEBACKGROUNDS")
	ConquestFrame.RoleInset.HealerIcon.bg:SetTexCoord(LFDQueueFrameRoleButtonHealer.background:GetTexCoord())
	ConquestFrame.RoleInset.HealerIcon.bg:Point('CENTER')
	ConquestFrame.RoleInset.HealerIcon.bg:Size(80)
	ConquestFrame.RoleInset.HealerIcon.bg:SetAlpha(0.5)

	ConquestFrame.RoleInset.DPSIcon:DisableDrawLayer("ARTWORK")
	ConquestFrame.RoleInset.DPSIcon:DisableDrawLayer("OVERLAY")
	ConquestFrame.RoleInset.DPSIcon.bg = ConquestFrame.RoleInset.DPSIcon:CreateTexture(nil, 'BACKGROUND')
	ConquestFrame.RoleInset.DPSIcon.bg:SetTexture("Interface\\LFGFrame\\UI-LFG-ICONS-ROLEBACKGROUNDS")
	ConquestFrame.RoleInset.DPSIcon.bg:SetTexCoord(LFDQueueFrameRoleButtonDPS.background:GetTexCoord())
	ConquestFrame.RoleInset.DPSIcon.bg:Point('CENTER')
	ConquestFrame.RoleInset.DPSIcon.bg:Size(80)
	ConquestFrame.RoleInset.DPSIcon.bg:SetAlpha(0.5)

	-- ConquestBar
	local conquestBar = ConquestFrame.XPBar
	bar = conquestBar.Bar
	text = conquestBar.Bar.OverlayFrame.Text
	nextAvailable = conquestBar.NextAvailable
	icon = nextAvailable.Icon

	conquestBar:StripTextures()

	bar:CreateBackdrop("Default")
	bar.Spark:SetAlpha(0)

	text:ClearAllPoints()
	text:Point("CENTER", bar)

	nextAvailable:StripTextures()
	nextAvailable:CreateBackdrop("Default")
	nextAvailable.backdrop:SetPoint("TOPLEFT", HonorFrame.XPBar.NextAvailable.Icon, -2, 2)
	nextAvailable.backdrop:SetPoint("BOTTOMRIGHT", HonorFrame.XPBar.NextAvailable.Icon, 2, -2)
	nextAvailable:ClearAllPoints()
	nextAvailable:SetPoint("LEFT", bar, "RIGHT", 0, -2)

	icon:SetDrawLayer("ARTWORK")
	icon:SetTexCoord(unpack(E.TexCoords))
	icon.SetTexCoord = E.noop

	local function handleButton(button)
		button:StripTextures()
		button:SetTemplate()
		button:StyleButton(nil, true)
		button.SelectedTexture:SetInside()
		button.SelectedTexture:SetColorTexture(1, 1, 0, 0.1)
	end

	handleButton(ConquestFrame.RatedBG)
	handleButton(ConquestFrame.Arena2v2)
	handleButton(ConquestFrame.Arena3v3)

	ConquestFrame.Arena3v3:Point("TOP", ConquestFrame.Arena2v2, "BOTTOM", 0, -2)

	-- WarGames Frame
	WarGamesFrame:StripTextures()
	WarGamesFrame.RightInset:StripTextures()
	S:HandleButton(WarGameStartButton, true)
	S:HandleScrollBar(WarGamesFrameScrollFrameScrollBar)
	WarGamesFrame.HorizontalBar:StripTextures()
	S:HandleScrollBar(WarGamesFrameInfoScrollFrameScrollBar)
	WarGamesFrameInfoScrollFrameScrollBar:StripTextures()
	S:HandleCheckBox(WarGameTournamentModeCheckButton)
	ConquestTooltip:SetTemplate("Transparent")
	PVPRewardTooltip:SetTemplate("Transparent")
end

S:AddCallbackForAddon('Blizzard_PVPUI', "PvPUI", LoadSkin)

local function LoadSecondarySkin()
	if E.private.skins.blizzard.enable ~= true or E.private.skins.blizzard.pvp ~= true then return end

	--PVP QUEUE FRAME
	PVPReadyDialog:StripTextures()
	PVPReadyDialog:SetTemplate("Transparent")
	S:HandleButton(PVPReadyDialogEnterBattleButton)
	S:HandleButton(PVPReadyDialogLeaveQueueButton)
	S:HandleCloseButton(PVPReadyDialogCloseButton)
	PVPReadyDialogRoleIcon.texture:SetTexture("Interface\\LFGFrame\\UI-LFG-ICONS-ROLEBACKGROUNDS")
	PVPReadyDialogRoleIcon.texture:SetAlpha(0.5)

	hooksecurefunc("PVPReadyDialog_Display", function(self, _, _, _, queueType, _, role)
		if role == "DAMAGER" then
			PVPReadyDialogRoleIcon.texture:SetTexCoord(LFDQueueFrameRoleButtonDPS.background:GetTexCoord())
		elseif role == "TANK" then
			PVPReadyDialogRoleIcon.texture:SetTexCoord(LFDQueueFrameRoleButtonTank.background:GetTexCoord())
		elseif role == "HEALER" then
			PVPReadyDialogRoleIcon.texture:SetTexCoord(LFDQueueFrameRoleButtonHealer.background:GetTexCoord())
		end

		if queueType == "ARENA" then
			self:Height(100)
		end

		self.background:Hide()
	end)
end

S:AddCallback("PVP", LoadSecondarySkin)