/// @description Insert description here
// You can write your code in this editor

ins_name = "testerino"

active = false
canAct = true

// side 0 player, side 1 enemy
side = false

control = ""
controlMenu = noone

selectLv = 0
selectSide = !side
selectTarg = 0
selectAct = 0

statInit = true

// [str, def, mag, mdef, spd, lck]
bStats = [1, 1, 1, 1, 1, 1]
cStats = [1, 1, 1, 1, 1, 1]

MHP = 100
CHP = 100
THP = 100

MMP = 10
CMP = 10

//	[phys, mag, fire, cryo, energy, mind, unblockable]
bRes = [1, 1, 1, 1, 1, 1, 1]
// Res number is modifier to damage taken from specific damage type. 
// ex: 1 * damage taken
// can also be negative or zero to absorb or negate damage
cRes = [1, 1, 1, 1, 1, 1, 1]

actions = ds_list_create()

effects = ds_list_create()

reactions = ds_list_create()