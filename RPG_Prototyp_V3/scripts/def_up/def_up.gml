// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function def_up(){
	cStats[1] += bStats[1]
}

function def_up_setup(){
//	turnLimit, script, description, id, extra
	return [1, def_up, "Defense up", 1, ""]
}