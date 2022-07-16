// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information	
function sturdy(){
	if(THP <= 0 && (CHP == MHP)){
		THP = 1
		show_debug_message("THIS IS DEBUG FOR sturdy. This blocks against 1hit KOs from full health")
		return true
	}
	return false
}

function sturdy_setup(){
	return [0, sturdy, 10]
}