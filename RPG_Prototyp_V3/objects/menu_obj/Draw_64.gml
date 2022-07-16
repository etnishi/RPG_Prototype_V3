/// @description Insert description here
// You can write your code in this editor

if(sLayer == noone){
	var sep = 64
	var colSep = 200
	
	var tcol = orientation
	var tsep = 0
	for(var i = 0; i < array_length(elements); i ++){
		tcol --
		if(tcol == 0){
			tcol = orientation
			tsep ++
		}
		draw_text(100 + (tsep * colSep), 100 + (sep * i), elements[i][0])
		if(ele_cur == i){
			draw_text(90 + (tsep * colSep), 100 + (sep * i), ">")
			draw_text(120 + (tsep * colSep), 114 + (sep * i), elements[i][1])
		}
	}
}