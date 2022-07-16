// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function stunned(){
	var chance = irandom_range(0, 5)
	if(active && chance > 3){
		canAct = false
	}
}

function stunned_setup(){
//	turnLimit, script, description, id
	return [3, stunned, "Stunned", 3, ""]
}