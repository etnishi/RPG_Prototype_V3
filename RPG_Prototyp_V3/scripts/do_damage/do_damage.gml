// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function do_damage(){
//	access to base, targ and type array
//	base is the amount of damage to be dealt
//	targ is the ID of the target instance
//	type is the array of the damage type. 
//	if damage has multiple types the damage will be modified by the average of the multipliers
	
	var totDamage = 0
	var hitWeak = false
	
	for(var i = 0; i < array_length(_type); i ++){
		var st = 3 //or 1
		if(i == 0){
			st = 1
		}
		if(_type[i] > 0){
			totDamage += ((base * _type[i]) - targ.cStats[st]) * targ.cRes[i]
			if(targ.cRes[i] > 1){
				hitWeak = true
			}
		}
	}
	if(totDamage < 0){
		totDamage = 0
	}
	if(isCrit || hitWeak){
		if(isCrit){
			totDamage = totDamage * 1.5
			show_debug_message("CRITICAL!")
		}
	}
	targ.THP -= totDamage
	ds_list_add(Battle_Controller_obj.log, (srcId.ins_name + " deals " + string(totDamage) + " damage"))
	var ins = instance_create_layer(x, y, "ActInstances", Action_Icon_obj)
	ins.setDir = 1
	ins.msg = string(totDamage)
}