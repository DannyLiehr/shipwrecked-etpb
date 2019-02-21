PrefabFiles = {
	"stupot",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/stupot.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/stupot.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/stupot.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/stupot.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/stupot_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/stupot_silho.xml" ),

    Asset( "IMAGE", "bigportraits/stupot.tex" ),
    Asset( "ATLAS", "bigportraits/stupot.xml" ),
	
	Asset( "IMAGE", "images/map_icons/stupot.tex" ),
	Asset( "ATLAS", "images/map_icons/stupot.xml" ),
	
	Asset("SOUNDPACKAGE", "sound/2D.fev"),
    Asset("SOUND", "sound/2D.fsb"),
}

local require = GLOBAL.require

RemapSoundEvent( "dontstarve/characters/stupot/death_voice", "2D/sound/death" )
RemapSoundEvent( "dontstarve/characters/stupot/hurt", "2D/sound/hurt" )
RemapSoundEvent( "dontstarve/characters/stupot/talk_LP", "2D/sound/talk_LP" )
RemapSoundEvent( "dontstarve/characters/stupot/yawn", "2D/sound/yawn" )

-- The character select screen lines
GLOBAL.STRINGS.CHARACTER_TITLES.stupot = "The Prettyboy Singer"
GLOBAL.STRINGS.CHARACTER_NAMES.stupot = "2-D"
GLOBAL.STRINGS.CHARACTER_DESCRIPTIONS.stupot = "*Perk 1\n*Perk 2\n*Perk 3"
GLOBAL.STRINGS.CHARACTER_QUOTES.stupot = "\"'ullo.\""
-- Custom speech strings
GLOBAL.STRINGS.CHARACTERS.STUPOT = require "speech_stupot"

-- Let the game know character is male, female, or robot
table.insert(GLOBAL.CHARACTER_GENDERS.MALE, "stupot")

AddMinimapAtlas("images/map_icons/stupot.xml")
AddModCharacter("stupot")

-- local pencil = GLOBAL.Recipe("pencil",{sharp_charcoal,Ingredient("twigs", 3),Ingredient("rope", 1)}, RECIPETABS.TOOLS, TECH.SCIENCE_ONE)
	-- pencil.atlas = "images/inventoryimages/pencil.xml"