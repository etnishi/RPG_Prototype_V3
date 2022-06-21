/// @description Insert description here
// You can write your code in this editor

if(side){
	draw_sprite_ext(Entity_spr, 0, x, y, 1, 1, 0 ,c_red, 1)
}else{
	draw_sprite_ext(Entity_spr, 0, x, y, 1, 1, 0 ,c_blue, 1)
}

draw_text(x, y, string(CHP))

if(control == player_control && active){
	if(selectLv == 0){
		var xoff = 0
		var yoff = 0
		var sep = 64
		for(var i = 0; i < ds_list_size(actions); i ++){
			draw_text(xoff + (sep * i), yoff, actions[| i][0])
			if(selectAct == i){
				draw_text(xoff + (sep * i), yoff - 8, "<>")
			}
		}
	}
}