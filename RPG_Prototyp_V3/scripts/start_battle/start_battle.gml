// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function start_battle(eArr){
	
	var ins = instance_create_layer(0, 0, "Instances", Battle_Controller_obj)
	
	for(var i = 0; i < array_length(global.team); i ++){
		if(global.team[i] != noone){
			var hld = init_entity(global.team[i])
			if(hld != ""){
				ds_list_add(ins.entities, hld)
				hld.selfInd = ds_list_find_index(ins.entities, hld)
			}
		}
	}
	for(var i = 0; i < array_length(eArr); i ++){
		var hld = init_entity(eArr[i])
		if(hld != ""){
			ds_list_add(ins.entities, hld)
		}
	}
}