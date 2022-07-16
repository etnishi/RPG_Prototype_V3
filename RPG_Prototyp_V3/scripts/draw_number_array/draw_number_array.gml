// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_number_array(xpos, ypos, scale, arr){
	var maxStat = 90
	
	var elem = array_length(arr)
	var angle = 360 / elem
	var lastx = lengthdir_x(arr[0]*scale, 0)
	var lasty = lengthdir_y(arr[0]*scale, 0)
	for(var i = 0; i < elem; i ++){
		var angx = lengthdir_x(arr[i]*scale, angle * i)
		var angy = lengthdir_y(arr[i]*scale, angle * i)
		
		draw_triangle(xpos, ypos, xpos + lastx, ypos + lasty, xpos + angx, ypos + angy, false)
		
		var ngx = lengthdir_x(maxStat*scale, angle * i)
		var ngy = lengthdir_y(maxStat*scale, angle * i)
		
		draw_text(xpos + ngx, ypos + ngy, string(arr[i]))
		lastx = angx
		lasty = angy
	}
	draw_triangle(xpos, ypos, xpos + lastx, ypos + lasty, xpos + lengthdir_x(arr[0]*scale, 0), ypos + lengthdir_y(arr[0]*scale, 0), false)
	
}