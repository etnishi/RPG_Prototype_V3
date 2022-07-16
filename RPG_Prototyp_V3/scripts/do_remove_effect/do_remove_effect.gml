// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//	turnLimit, script, description, id
function do_remove_effect(){
	for(var i = 0; i < ds_list_size(effectScr); i ++){
		remove_effect(targ, effectScr[| i][3])	//	removes all the effects in effectScr ds list
		ds_list_add(Battle_Controller_obj.log, (targ.ins_name + " recovers from " + string(effectScr[| i][2])))
		var ins = instance_create_layer(x, y, "ActInstances", Action_Icon_obj)
		ins.setDir = 3
		ins.msg = "-" + string(effectScr[| i][2])
	}
	targ.statInit = true
}

function remove_effect(targ, efId){
	for(var i = 0; i < ds_list_size(targ.effects); i ++){
		if(targ.effects[| i][3] == efId){
			ds_list_delete(targ.effects, i)
			return
		}
	}
}