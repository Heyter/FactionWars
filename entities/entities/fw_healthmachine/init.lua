AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
	self:SetModel("models/props_lab/reciever_cart.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)  
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetUseType(SIMPLE_USE)

	self:PhysWake()

	fw.resource.addEntity(self)

	self.Consumption = {power = 1}
	self:FWSetResource("healthpack", 6)

	-- every 30 seconds add 1 healthpack
	timer.Create("fw-healthmachine-refill-" .. self:EntIndex(), 60, 0, function()
		if not IsValid(self) or self:FWHaveResource("power") < self.Consumption.power then return end
		local hp = self:FWHaveResource("healthpack") or 0
		self:FWSetResource("healthpack", math.min(hp + 1, self.MaxProduction.healthpack))
	end)
end

function ENT:Use(ply)
	if ply:Health() < ply:GetMaxHealth() then
		local hp = self:FWHaveResource("healthpack") or 0
		if hp > 0 then
			ply:SetHealth(math.min(ply:Health() + 100, ply:GetMaxHealth()))
			self:EmitSound("hl1/fvox/boop.wav", 150, 100, 1, CHAN_AUTO)
			self:FWSetResource("healthpack", hp - 1)
		else
			self:EmitSound("hl1/fvox/buzz.wav", 150, 100, 1, CHAN_AUTO)
		end
	end
end

function ENT:SpawnFunction(ply, tr, ClassName)
	if not tr.Hit then return end

	local SpawnPos = tr.HitPos + tr.HitNormal * 36
	local ent = ents.Create(ClassName)
	ent:SetPos(SpawnPos)
	ent:Spawn()
	ent:Activate()

	return ent
end

function ENT:OnRemove()
	fw.resource.removeEntity(self)
end
