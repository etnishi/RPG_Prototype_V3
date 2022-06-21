/// @description Insert description here
// You can write your code in this editor

if(turnInd >= ds_list_size(entities)){
	turnInd = 0
}

if(setOrder){
	setOrder = false
	var pxoff = 400
	var pyoff = 800
	var pider = 0
	var exoff = 400
	var eyoff = 200
	var eider = 0
	var sep = 96
	for(var i = 0; i < ds_list_size(entities); i ++){
		if(entities[| i].side){
			eider ++
			entities[| i].x = exoff + (sep * eider)
			entities[| i].y = eyoff
		}else{
			pider ++
			entities[| i].x = pxoff + (sep * pider)
			entities[| i].y = pyoff
		}
	}
}

if(!instance_exists(Action_pause_super)){
	// starting an entity's turn
	// sets entity to active
	if(!entities[| turnInd].active){
		turnTotal ++
		entities[| turnInd].active = true
		show_debug_message("Start turn " + string(turnTotal))
	}
}