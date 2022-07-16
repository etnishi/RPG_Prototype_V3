// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_item(arr){
//	item arr = [id, type, amount, script, name, description]
//	only item type 0 available for use in battle
	var ind = -1
	for(var i = 0; i < ds_list_size(global.inventory); i ++){
		if(global.inventory[| i][0] == arr[0]){
			ind = i
		}
	}
	if(ind != -1){
		global.inventory[| ind][1] += arr[1]
	}else{
		ds_list_add(global.inventory, arr)
	}
}