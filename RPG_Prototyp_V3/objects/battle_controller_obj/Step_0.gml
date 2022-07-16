/// @description Insert description here
// You can write your code in this editor

if(turnInd >= ds_list_size(entities)){
	turnInd = 0
}

if(setOrder){
	setOrder = false
	var pxoff = 800
	var pyoff = 800
	var pider = 0
	var exoff = 800
	var eyoff = 200
	var eider = 0
	var sep = 120
	var psep = 200
	
	var eoff = 0
	var poff = 0
	for(var i = 0; i < ds_list_size(entities); i ++){
		if(entities[| i].side){
			eoff ++
		}else{
			poff ++
		}
	}
	
	eoff = eoff / 2
	
	poff = poff / 2
	
	for(var i = 0; i < ds_list_size(entities); i ++){
		if(entities[| i].side){
			eider ++
			entities[| i].x = exoff + (sep * eider) - (eoff * sep) - (sep / 2)
			entities[| i].y = eyoff
		}else{
			pider ++
			entities[| i].x = pxoff + (psep * pider) - (poff * psep) - (psep / 2)
			entities[| i].y = pyoff
		}
	}
}


win = check_side(true)
if(win || check_side(false)){
	over = true
}

if(!over){
	if(!instance_exists(Action_pause_super)){
		// starting an entity's turn
		// sets entity to active
		
		if(!entities[| turnInd].active ){
			var adv = true
			for(var i = 0; i < ds_list_size(entities); i ++){
				if(entities[| i].active){
					adv = false
				}
			}
			if(adv){
				turnTotal ++
				entities[| turnInd].active = true
				with(entities[| turnInd]){
					start_turn()
				}
				show_debug_message("Start turn " + string(turnTotal))
			}
		}
	}
}else{
	for(var i = 0; i < ds_list_size(entities); i ++){
		entities[| i].active = false
	}
	if(win){
		set_notification(200, 200, " This is a great test message \n newline 2 \n newline three L", "", 1, true)
	}else{
		
	}
}