/// @description Insert description here
// You can write your code in this editor

if(msg != ""){
	if(doPause && pauseSpr == ""){
		pauseSpr = sprite_create_from_surface(application_surface, 0, 0, camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), false, false, 0, 0)
		instance_deactivate_all(true)
	}
	if(msgind < string_length(msg)){
		msgind += msgspd
	}
	if(keyboard_check_pressed(vk_space)){
		if(msgind < string_length(msg)){
			msgind = string_length(msg)
		}else{
			if(endScr != ""){
				endScr()
			}
			if(doPause){
				instance_activate_all()
			}
			instance_destroy()
		}
	}
}