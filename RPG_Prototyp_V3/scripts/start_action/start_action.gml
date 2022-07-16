// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function start_action(actInd, targ){
//act[	name,	desc,	cost,	cooldown,	cCooldown,	target type,	script]
//		0		1		2		3			4			5				6
	var actr = ""
	if(extraAct){
		actr = extra_acts[actInd]
		if(global.inventory[actr[2]] > 0){
			global.inventory[actr[2]] --
		}else{
			return false
		}
	}else{
		actr = actions[| actInd]
		if(CMP < actr[2]){
			return false
		}
	}
	if((actr[4] <= 0)){
		CMP -= actr[2]
		actr[4] = actr[3]
		var actIns = instance_create_layer(x, y, "ActInstances", Action_pause_super)
		actIns.srcId = id 
		actIns.targ = Battle_Controller_obj.entities[| targ]
		actr[6](actIns)
		return true
	}else{
		return false
	}
	
}