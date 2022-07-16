// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sub_menu(arr){
	var ins = instance_create_layer(0, 0, "MenuInstances", Menu_obj)
	ins.elements = arr
	ins.tLayer = id
	sLayer = ins
}