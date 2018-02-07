
--------------------------------------------------------------------------------
-- TODO List:
-- - Check spellId/events for BloodSwarmDamage (202947?)

--------------------------------------------------------------------------------
-- Module Declaration
--

local mod, CL = BigWigs:NewBoss("Thalena", 1066, 1702)
if not mod then return end
mod:RegisterEnableMob(102431)
mod.engageId = 1855

--------------------------------------------------------------------------------
-- Locals
--


--------------------------------------------------------------------------------
-- Localization
--

local L = mod:GetLocale()
if L then
	L.essence = "Essence"
end

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {
		{202779, "FLASH", "SAY"}, -- Essence of the Blood Princess
		203381, -- Blood Call
		202947, -- Blood Swarm
	}
end

function mod:OnBossEnable()
	self:Log("SPELL_AURA_APPLIED", "Essence", 202779, 202810) -- initial debuff, debuff after successful bite
	self:Log("SPELL_AURA_REMOVED", "EssenceRemoved", 202779, 202810)
	self:Log("SPELL_CAST_START", "BloodCall", 203381)
	self:Log("SPELL_AURA_APPLIED", "BloodSwarmDamage", 202947)
	self:Log("SPELL_PERIODIC_DAMAGE", "BloodSwarmDamage", 202947)
	self:Log("SPELL_PERIODIC_MISSED", "BloodSwarmDamage", 202947)
end

function mod:OnEngage()
	self:Bar(202779, 7, L.essence)
	self:Bar(203381, 30)
end

--------------------------------------------------------------------------------
-- Event Handlers
--

function mod:Essence(args)
	self:TargetMessage(202779, args.destName, "Positive", "Info")
	self:TargetBar(202779, 30, args.destName, L.essence) -- Are 4 bars (at max) too much?
	if self:Me(args.destGUID) then
		self:Say(202779, L.essence)
	end
end

function mod:EssenceRemoved(args)
	if self:Me(args.destGUID) then
		self:TargetMessage(202779, args.destName, "Personal", "Alert", CL.removed:format(L.essence))
		self:Flash(202779)
	end
end

function mod:BloodCall(args)
	self:Message(args.spellId, "Attention", "Long")
	self:Bar(args.spellId, 30)
end

do
	local prev = 0
	function mod:BloodSwarmDamage(args)
		local t = GetTime()
		if t-prev > 2 and self:Me(args.destGUID) then
			prev = t
			self:Message(args.spellId, "Personal", "Alarm", CL.underyou:format(args.spellName))
		end
	end
end
