/// @description Insert description here
// You can write your code in this editor

if((!instance_exists(tLayer) && tLayer != noone) || (array_length(elements) == 0)){
	instance_destroy()
}

if(sLayer == noone || !instance_exists(sLayer)){
	sLayer = noone
	if((keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("A")))){
		instance_destroy()
	}
	
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("D"))){
		if(elements[ele_cur][2] != "")
			elements[ele_cur][2](elements[ele_cur][3])
	}
	
	if(keyboard_check_pressed(ord("S"))){
		if(ele_cur < array_length(elements)-1){
			ele_cur ++
		}else{
			ele_cur = 0
		}
	}
	
	if(keyboard_check_pressed(ord("W"))){
		if(ele_cur > 0){
			ele_cur --
		}else{
			ele_cur = (array_length(elements)-1)
		}
	}
}
