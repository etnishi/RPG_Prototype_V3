/// @description Insert description here
// You can write your code in this editor

draw_set_font(Char_Font)

var actYoff = 0

if(active)
	actYoff = 10

if(side){
//	enemy
	draw_sprite_ext(Entity_spr, 0, x, y + actYoff, 1, 1, 0 ,c_red, 1)
	draw_text(x, y + actYoff, string(CHP))
	var esep = 14
	for(var i = 0; i < ds_list_size(effects); i ++){
		if(effects[| i][0] > 0)
			draw_text(x + 33, y + actYoff - 40 + (i * esep), string(effects[| i][0]) + " " + string(effects[| i][2]))
	}

}else{
//	player
	actYoff = -actYoff
	draw_sprite_ext(Player_Box_spr, 0, x, y + actYoff, 1, 1, 0 ,c_white, 1)
	draw_number_bar(x - 32, y + actYoff, 64, MHP, CHP, c_red)
	draw_number_bar(x - 32, y + actYoff + 12, 64, MMP, CMP, c_blue)
	var esep = 14
	for(var i = 0; i < ds_list_size(effects); i ++){
		if(effects[| i][0] > 0)
			draw_text(x - 64, y + actYoff - 40 + (i * esep), string(effects[| i][0]) + " " + string(effects[| i][2]))
	}

}


if(isDowned){
	draw_text(x, y - 28, "DOWN")
}

//	draw_number_array(x - 64, y, 2, cStats)

// Draws control menu 
if(control == player_control && active){
	
	if(selectLv == 0){
		var xoff = 70
		var yoff = 40
		var sep = 110
		draw_sprite(Act_Mode_spr, 1, xoff - 52, yoff)
		if(extraAct){
			draw_text_transformed(xoff - 8, yoff - 8, "Extra", 1, 1, 270)
			for(var i = 0; i < array_length(extra_acts); i ++){
				if(global.inventory[extra_acts[i][2]] > 0 || extra_acts[i][2] == 0){
					
					draw_set_halign(fa_center)
					draw_text(xoff + (sep * i) + 32, yoff - 28, extra_acts[i][0])
					draw_set_halign(fa_left)
					if(i > 0){
						draw_text(xoff + (sep * i) + 24, yoff + 64, global.inventory[i])
					}
					if(extra_acts[i][8] != ""){
						draw_sprite(extra_acts[i][8], 0, xoff + (sep * i), yoff)
					}
					if(selectAct == i){
						draw_sprite(border_spr, 0, xoff + (sep * i), yoff)
					}
				}
			}
		}else{
			draw_text_transformed(xoff - 8, yoff - 8, "Actions", 1, 1, 270)
			for(var i = 0; i < ds_list_size(actions); i ++){
				draw_set_halign(fa_center)
				draw_text(xoff + (sep * i) + 32, yoff - 28, actions[| i][0])
				draw_set_halign(fa_left)
				draw_text(xoff + (sep * i) + 24, yoff + 64, actions[| i][4])
				if(actions[| i][8] != ""){
					draw_sprite(actions[| i][8], 0, xoff + (sep * i), yoff)
				}
				if(selectAct == i){
					draw_sprite(border_spr, 0, xoff + (sep * i), yoff)
				}
			}
		}
	}else if(selectLv == 1){
		var ent = Battle_Controller_obj.entities[| selectTarg]
		draw_sprite(Target_Mark_spr, 0, ent.x, ent.y - 36)
		//draw_text(ent.x, ent.y - 36, "<-------------------------------------------->")
	}
}