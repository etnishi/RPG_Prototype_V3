/// @description Insert description here
// You can write your code in this editor

if(init){
	init = false
	countDown = frameCount
	if(targ != noone){
		movSpeed = point_distance(x, y, targ.x, targ.y) / frameCount
	}
}

if(actSpr != ""){
	if(actSprInd < sprite_get_number(actSpr)-1){
		actSprInd ++
	}else{
		actSprInd = 0
	}
}

if(targ != noone){
	if(countDown < 0){
		var rand = irandom_range(1, 20)
		if(rand >= 20 - critMod ){
			isCrit = true
		}
		if(isCrit || rand+targ.cStats[4] < hitRate){
			for(var i = 0; i < ds_list_size(actionScr); i ++){
				actionScr[| i]()
			}
		}
		instance_destroy()
	}
	countDown --
	if(point_distance(x, y, targ.x, targ.y) > 0)
		move_towards_point(targ.x, targ.y, movSpeed)
	else
		speed = 0
}else{
	instance_destroy()
}

if(part_type != "" && p_cur == part_timer){
	p_cur = 0
	part_particles_create(Battle_Controller_obj.part_sys, x, y, part_type, 1)
}else{
	p_cur ++
}