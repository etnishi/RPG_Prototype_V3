// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function downed(){
	canAct = false
	isDowned = true
}

function downed_setup(){
//	turnLimit, script, description, id
	return [-1, downed, "Downed", 0, ""]
}