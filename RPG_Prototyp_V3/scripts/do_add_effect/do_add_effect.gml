// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function do_add_effect(){
	for(var i = 0; i < ds_list_size(effectScr); i ++){
		add_effect(targ, effectScr[| i])
		ds_list_add(Battle_Controller_obj.log, (targ.ins_name + " gains " + string(effectScr[| i][2])))
		var ins = instance_create_layer(x, y, "ActInstances", Action_Icon_obj)
		ins.setDir = 3
		ins.msg = "+" + string(effectScr[| i][2])
	}
	targ.statInit = true
	
}

function add_effect(targ, eff){
//	turnLimit, script, description, id
	var ind = -1
	for(var i = 0; i < ds_list_size(targ.effects); i ++){
		if(targ.effects[| i][3] == eff[3]){
			ind = i
		}
	}
	if(ind == -1){
		ds_list_add(targ.effects, eff)
	}else{
		targ.effects[| ind][0] = eff[0]
	}
}
