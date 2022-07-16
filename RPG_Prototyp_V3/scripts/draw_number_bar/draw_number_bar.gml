// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_number_bar(xpos, ypos, width, mVal, cVal, col = c_white, sprite = bar_side_spr){
	
	var per_val = cVal / mVal
	
	draw_rectangle_color(xpos, ypos, xpos + sprite_get_width(sprite), ypos + sprite_get_height(sprite), c_black, c_black, c_black, c_black, true)
	
	draw_rectangle_color(xpos, ypos, xpos + ((width + sprite_get_width(sprite)) * per_val), ypos + (sprite_get_height(sprite) * per_val), col, col, col, col, false)
	
	draw_sprite_ext(sprite, 0, xpos, ypos, 1, 1, 0, c_white, 1)
	
	draw_sprite_ext(sprite, 0, xpos + width + sprite_get_width(sprite), ypos + sprite_get_height(sprite), 1, 1, 180, c_white, 1)
	
}