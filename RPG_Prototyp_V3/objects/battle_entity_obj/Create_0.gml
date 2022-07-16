/// @description Insert description here
// You can write your code in this editor
idleY = y

ins_name = "testerino"

isDowned = false
active = false
canAct = true

// side 0 player, side 1 enemy
side = false

control = ""
controlMenu = noone

extraAct = false
selfInd = -1
selectLv = 0
selectSide = !side
selectTarg = 0
targMode = 0
selectAct = 0

statInit = true

xpLv = 10

agroMod = 1

// [str, def, mag, mdef, spd, lck]
bStats = [1, 1, 1, 1, 1, 1]
cStats = [1, 1, 1, 1, 1, 1]

MHP = 100
CHP = 100
THP = 100
CRate = 0.1

MMP = 10
CMP = 10

//	[phys, mag, fire, cryo, energy, mind, unblockable]
bRes = [1, 1, 1, 1, 1, 1, 1]
// Res number is modifier to damage taken from specific damage type. 
// ex: 1 * damage taken
// can also be negative or zero to absorb or negate damage
cRes = [1, 1, 1, 1, 1, 1, 1]

actions = ds_list_create()

extra_acts = [run_setup(), itemHeal_setup()]

effects = ds_list_create()

reactions = ds_list_create()

equipment = ["", "", "", "", "", "", "", ""]
//	[0 weapon, 1 alt weapon, 2 chest, 3 head, 4 feet, 5 hands, 6 accessory1, 7 accessory2]
//	armor array		[icon, type, def bonus, mdef bonus, script]
//	weapon array	[icon, type, bonus, [bonus type arr]]


