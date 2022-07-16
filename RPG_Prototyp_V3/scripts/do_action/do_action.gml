// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function do_action(actArr){
//	acrArr = [instance, action, target]
	
	with(actArr[0]){
		end_turn(actArr[1], actArr[2])
	}
}