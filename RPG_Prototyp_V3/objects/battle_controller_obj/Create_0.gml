/// @description Insert description here
// You can write your code in this editor

entities = ds_list_create()

effects = ds_list_create()

log = ds_list_create()// ds list of strings to display as log
/*
for(var i = 0; i < array_length(global.team); i ++){
	ds_list_add(entities, global.team[i])
}

for(var i = 0; i < array_length(global.enemyTeam); i ++){
	ds_list_add(entities, global.enemyTeam[i])
}
*/
turnInd = 0

turnTotal = 0

setOrder = true

over = false

win = false

part_sys = part_system_create()

function check_side(side){
	var arr = []
	for(var i = 0; i < ds_list_size(entities); i ++){
		if(side == entities[| i].side){
			array_push(arr, entities[| i].CHP)
		}
	}
	var chk = 0
	for(var i = 0; i < array_length(arr); i ++){
		chk += arr[i]
	}
	if(chk <= 0){
		return true
	}else{
		return false
	}
}