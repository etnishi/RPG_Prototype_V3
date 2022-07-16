// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function start_turn(){
	for(var i = 0; i < ds_list_size(effects); i ++){
		if(effects[| i][0] > 0){
			effects[| i][0] --
			if(effects[| i][0] == 0){
				var ins = instance_create_layer(x, y, "ActInstances", Action_Icon_obj)
				ins.setDir = 3
				ins.msg = "-" + string(effects[| i][2])
			}
		}
		if(effects[| i][0] != 0 && effects[| i][4] != ""){
			effects[| i][4]()
		}
	}
	for(var i = 0; i < ds_list_size(reactions); i ++){
		if(reactions[| i][0] > 0){
			reactions[| i][0] --
		}
	}
	for(var i = 0; i < ds_list_size(actions); i ++){
		if(actions[| i][4] > 0){
			actions[| i][4] --
		}
	}
	statInit = true
}

function end_turn(act, targ){
	if(start_action(act, targ)){
		selectLv = 0
		active = false
		extraAct = false
		statInit = true
		Battle_Controller_obj.turnInd ++
	}else{
		selectLv = 0
	}
}
