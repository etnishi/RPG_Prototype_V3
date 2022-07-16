// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_inventory(){
//	item arr = [id, type, amount, script, name, description]
//	each element is [name, desc, script, arg]
	var arr = []
	for(var i = 0; i < ds_list_size(global.inventory); i ++){
		array_push(arr, [global.inventory[| i][4], global.inventory[| i][5], global.inventory[| i][3], ""])
	}
	sub_menu(arr)
}