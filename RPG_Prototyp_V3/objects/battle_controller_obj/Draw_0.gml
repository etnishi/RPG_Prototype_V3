/// @description Insert description here
// You can write your code in this editor
draw_line_color(800, 0, 800, 900, c_red, c_red)


var logx = 100
var logy = 700
var sep = 20
// start point of log box is bottom corner of log box
var ider = 0
for(var i = ds_list_size(log)-1; i >= 0; i--){
	if(ider < 6)
		draw_text(logx, logy - (sep * ider), string(log[| i]))
	else
		break
	ider ++
}