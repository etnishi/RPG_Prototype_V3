// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function def_up(){
	var val = ceil(bStats[1] / 2)
	cStats[1] += val
}

function def_up_setup(){
//	
	return [-1, def_up, ""]
}