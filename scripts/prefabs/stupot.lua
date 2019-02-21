
local MakePlayerCharacter = require "prefabs/player_common"


local assets = {
        Asset( "ANIM", "anim/stupot.zip" ),
}
local prefabs = {}
local start_inv = {
	-- Custom starting items
}

local fn = function(inst)
	
	--inst.components.talker:Say(GetString("stupot", "ANNOUNCE_SPAWN"))
	
	-- choose which sounds this character will play
	inst.soundsname = "stupot"
	
	inst:AddTag("polite")
	inst:AddTag("gorillaz")
	inst:AddTag("migraine")

	-- Minimap icon
	inst.MiniMapEntity:SetIcon( "stupot.tex" )
	
	-- Surfboard?
	
	local surfboard_recipe = Recipe("surfboard_item", {Ingredient("boards", 1), Ingredient("seashell", 2)}, RECIPETABS.NAUTICAL, TECH.NONE,  RECIPE_GAME_TYPE.SHIPWRECKED)
	surfboard_recipe.sortkey = 1
	
	-- Stats	
	inst.components.health:SetMaxHealth(150)
	inst.components.hunger:SetMax(150)
	inst.components.sanity:SetMax(200)
	--inst.components.eater:SetVegetarian()
	inst.components.eater.foodprefs = { "VEGGIE", "INSECT", "SEEDS", "GENERIC" }

	-- Damage multiplier (optional)
    inst.components.combat.damagemultiplier = .8
	
	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	
	-- Movement speed (optional)
	inst.components.locomotor.walkspeed = 4
	inst.components.locomotor.runspeed = 6
	
	inst:SetStateGraph("SGstupot")
	

end

return MakePlayerCharacter("stupot", prefabs, assets, fn, start_inv)
