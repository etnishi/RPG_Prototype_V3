// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sleep(){
	if(active){
		selectLv = 0
		active = false
		statInit = true
		Battle_Controller_obj.turnInd ++
	}
}

function sleep_setup(){
//	turnLimit, script, description, id
	return [3, sleep, "Sleeping", 2, ""]
}