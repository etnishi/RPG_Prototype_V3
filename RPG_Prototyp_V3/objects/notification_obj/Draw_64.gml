/// @description Insert description here
// You can write your code in this editor

if(pauseSpr != "" && sprite_exists(pauseSpr)){
	draw_sprite(pauseSpr, 0, 0, 0)
}

var line = ""
for(var i = 1; i <= ceil(msgind); i ++){
	line += string_char_at(msg, i)
}
draw_set_font(Main_Font)
draw_text(x, y, line)