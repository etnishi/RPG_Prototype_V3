/// @description Insert description here
// You can write your code in this editor

if(actSpr != ""){
	if(sprite_exists(actSpr)){
		if(sprTrack){
			draw_sprite_ext(actSpr, actSprInd, x, y, 1, 1, direction, c_white, 1)
		}else{
			draw_sprite_ext(actSpr, actSprInd, targ.x, targ.y, 1, 1, 0, c_white, 1)
		}
	}
}