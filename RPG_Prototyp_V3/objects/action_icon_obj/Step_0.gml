/// @description Insert description here
// You can write your code in this editor

if(setDir == 0){
	direction = irandom_range(0, 360)
	setDir = -1
}else if(setDir == 1){
	direction = irandom_range(0, 180)
	setDir = -1
}else if(setDir == 2){
	direction = irandom_range(180, 360)
	setDir = -1
}else if(setDir == 3){
	direction = 90
	setDir = -1
}

ttl --

if(ttl < 0){
	instance_destroy()
}