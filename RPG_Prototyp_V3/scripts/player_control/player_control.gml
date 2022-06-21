// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_control(){
	
	if(!instance_exists(controlMenu)){
		if(keyboard_check_pressed(ord("D"))){
			if(selectLv > 0){
				var chk = 0
				do{
					chk ++
					if(selectTarg < ds_list_size(Battle_Controller_obj.entities)-1){
						selectTarg ++
					}else{
						selectTarg = 0
					}
				}until(Battle_Controller_obj.entities[| selectTarg].side == selectSide 
					|| chk > ds_list_size(Battle_Controller_obj.entities))
			}else{
				if(selectAct < ds_list_size(actions)){
					selectAct ++
				}else{
					selectAct = 0
				}
			}
		}
	
		if(keyboard_check_pressed(ord("A"))){
			if(selectLv > 0){
				var chk = 0
				do{
					chk ++
					if(selectTarg > 0){
						selectTarg --
					}else{
						selectTarg = ds_list_size(Battle_Controller_obj.entities)-1
					}
				}until(Battle_Controller_obj.entities[| selectTarg].side == selectSide
					|| chk > ds_list_size(Battle_Controller_obj.entities))
			}else{
				if(selectAct > 0){
					selectAct --
				}else{
					selectAct = ds_list_size(actions)-1
				}
			}
		}
		
		if(keyboard_check_pressed(ord("W"))){
			// show info
		}
	
		if(keyboard_check_pressed(ord("S"))){
			// show other actions ex: run from battle, items
		}
		
		if(keyboard_check_pressed(vk_space)){
			selectLv ++
			if(selectLv >= 2){
				start_action(selectAct, selectTarg)
				selectLv = 0
				active = false
				statInit = true
				Battle_Controller_obj.turnInd ++
			}
		}
	}
}