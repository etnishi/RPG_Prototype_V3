// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_entity(arr){
	if(arr != ""){
		var ins = instance_create_layer(0, 0, "Instances", Battle_Entity_obj)
	
		// todo init all variables from arr.
	
		ins.ins_name = arr[0]
		ins.side = arr[1]
		ins.control = arr[2]
		ins.bStats = arr[3]
		ins.MHP = arr[4]
		ins.CHP = arr[5]
		ins.THP = ins.CHP
		ins.MMP = arr[6]
		ins.CMP = arr[7]
		ins.bRes = arr[8]
	
		for(var i = 0; i < array_length(arr[9]); i ++){
			ds_list_add(ins.actions, arr[9][i])
		}
		for(var i = 0; i < array_length(arr[10]); i ++){
			ds_list_add(ins.effects, arr[10][i])
		}
		for(var i = 0; i < array_length(arr[11]); i ++){
			ds_list_add(ins.reactions, arr[11][i])
		}
	
		ins.equipment = arr[12]
	
		if(arr[1]){
			ins.CRate = 1
		}
	
		return ins
	}else{
		return ""
	}
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