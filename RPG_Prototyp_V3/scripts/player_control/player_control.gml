// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_control(){
	
	if(!instance_exists(controlMenu)){
		if(keyboard_check_pressed(ord("D"))){
			if(selectLv > 0){
				if(selectMode != 3){
					var chk = 0
					do{
						chk ++
						if(selectTarg < ds_list_size(Battle_Controller_obj.entities)-1){
							selectTarg ++
						}else{
							selectTarg = 0
						}
					}until(Battle_Controller_obj.entities[| selectTarg].side == selectSide && Battle_Controller_obj.entities[| selectTarg].isDowned == false)
				}
			}else{
				if(extraAct){
					do{
						if(selectAct < array_length(extra_acts)-1){
							selectAct ++
						}else{
							selectAct = 0
						}
					}until(global.inventory[extra_acts[selectAct][2]] > 0 || extra_acts[selectAct][2] == 0)
				}else{
					if(selectAct < ds_list_size(actions)-1){
						selectAct ++
					}else{
						selectAct = 0
					}
				}
			}
		}
	
		if(keyboard_check_pressed(ord("A"))){
			if(selectLv > 0){
				if(selectMode != 3){
					var chk = 0
					do{
						chk ++
						if(selectTarg > 0){
							selectTarg --
						}else{
							selectTarg = ds_list_size(Battle_Controller_obj.entities)-1
						}
					}until(Battle_Controller_obj.entities[| selectTarg].side == selectSide && Battle_Controller_obj.entities[| selectTarg].isDowned == false)
				}
			}else{
				if(extraAct){
					do{
						if(selectAct > 0){
							selectAct --
						}else{
							selectAct = array_length(extra_acts)-1
						}
					}until(global.inventory[extra_acts[selectAct][2]] > 0 || extra_acts[selectAct][2] == 0)
				}else{
					if(selectAct > 0){
						selectAct --
					}else{
						selectAct = ds_list_size(actions)-1
					}
				}
			}
		}
		
		if(keyboard_check(ord("W"))){
			// show info
		}
		
		if(keyboard_check_pressed(ord("S"))){
			// show other actions ex: run from battle, items
			// these are not changable in extra acts
			extraAct = !extraAct
			selectAct = 0
			selectLv = 0
		}
		
		if(keyboard_check_pressed(vk_shift)){
			if(selectLv == 0){
				selectAct = 0
			}
			extraAct = false
			selectLv = 0
		}
		
		if(keyboard_check_pressed(vk_space)){
			selectLv ++
			if(selectLv == 1){
				var actr = ""
				if(extraAct){
					actr = extra_acts[selectAct]
				}else{
					actr = actions[| selectAct]
				}
				if(CMP >= actr[2] && actr[4] == 0){
					selectSide = (actr[5] < 3)
					selectMode = actr[5]
					if(selectMode == 3){
						selectTarg = selfInd
					}else{
						var limit = ds_list_size(Battle_Controller_obj.entities)
						while((limit > 0) && (Battle_Controller_obj.entities[| selectTarg].side != selectSide) || (Battle_Controller_obj.entities[| selectTarg].isDowned == true)){
							limit --
							if(selectTarg < ds_list_size(Battle_Controller_obj.entities)-1){
								selectTarg ++
							}else{
								selectTarg = 0
							}
						}
					}
				}else{
					selectLv = 0
				}
			}
			if(selectLv >= 2){
				end_turn(selectAct, selectTarg)
			}
		}
		
	}
}