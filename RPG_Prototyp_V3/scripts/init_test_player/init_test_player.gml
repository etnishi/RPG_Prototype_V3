// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_test_player(){
	var out = []
	
	out[0]	= "name"
	out[1]	= false
	out[2]	= player_control
	out[3]	= [1, 1, 1, 1, 1, 1]
	out[4]	= 100
	out[5]	= 100
	out[6]	= 10
	out[7]	= 10
	out[8]	= [1, 1, 1, 1, 1, 1, 1]
	out[9]	= [bash_setup(), defend_setup()]
	out[10] = []
	out[11] = []
	
	return out
}

/*
name = "testerino"						0

// side 0 player, side 1 enemy		
side = false							1

control = ""							2
// [str, def, mag, mdef, spd, lck]
bStats = [1, 1, 1, 1, 1, 1]				3
cStats = [1, 1, 1, 1, 1, 1]

MHP = 100								4
CHP = 100								5
THP = 100

MMP = 10								6
CMP = 10								7

//	[phys, mag, fire, cryo, energy, mind, unblockable]
bRes = [1, 1, 1, 1, 1, 1, 1]			8
// Res number is modifier to damage taken from specific damage type. 
// ex: 1 * damage taken
// can also be negative or zero to absorb or negate damage
cRes = [1, 1, 1, 1, 1, 1, 1]

actions = ds_list_create()				9

effects = ds_list_create()				10

reactions = ds_list_create()			11
*/