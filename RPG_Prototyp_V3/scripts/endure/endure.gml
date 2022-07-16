// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information	

function endure(){
	if(THP <= 0){
		THP = 1
		show_debug_message("THIS IS DEBUG FOR ENDURE")
		return true
	}
	return false
}

function endure_setup(){
	return [0, endure, 10]
}