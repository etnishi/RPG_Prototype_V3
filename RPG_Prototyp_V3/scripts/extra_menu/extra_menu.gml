// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function extra_menu(){
	var arr = []
	
//	each element is [name, desc, script, arg]
	array_push(arr, ["run", "", sub_menu, [
		["Run from Battle?", "", "", ""] ]])
	array_push(arr, ["items", "", show_inventory, ""])
	
	start_menu(arr)
}