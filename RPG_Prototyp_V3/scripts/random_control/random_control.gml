// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function random_control(){
	selectLv ++
	if(selectLv > 20){
		
		var act = irandom_range(0, ds_list_size(actions)-1)
		targMode = actions[| act][5]
		selectSide = !(actions[| act][5] < 3)
		var targ = irandom_range(0, ds_list_size(Battle_Controller_obj.entities)-1)
	
		while(Battle_Controller_obj.entities[| targ].side != selectSide){
			if(targ < ds_list_size(Battle_Controller_obj.entities)-1){
				targ ++
			}else{
				targ = 0
			}
		}
		
		end_turn(act, targ)
		show_debug_message(ins_name + " uses action " + actions[| act][1])
	}
}