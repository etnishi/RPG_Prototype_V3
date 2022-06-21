/// @description Insert description here
// You can write your code in this editor

if(statInit){
	statInit = false
	canAct = true
	array_copy(cStats, 0, bStats, 0, array_length(bStats))
	array_copy(cRes, 0, bRes, 0, array_length(bRes))
	for(var i = 0; i < ds_list_size(effects); i ++){
		if(effects[| i][0] != 0){
			effects[| i][1]()
			if(effects[| i][0] > 0){
				effects[| i][0] --
			}
		}
	}
	for(var i = 0; i < ds_list_size(actions); i ++){
		if(actions[| i][4] > 0){
			actions[| actInd][4] --
		}
	}
	
}

if(active){
	// if Current HP is less or equal to 0 skips turn.
	// this is because CHP does not change instantly unlike other effects that can cause 
	// a turn miss.
	if(CHP <= 0){	
		canAct = false
	}
	if(control != "" && canAct){
		control()
	}else{
		active = false
		statInit = true
		Battle_Controller_obj.turnInd ++
	}
}