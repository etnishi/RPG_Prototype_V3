// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function do_heal(){
//	access to base, targ and type array
//	base is the amount of damage to be dealt
//	targ is the ID of the target instance
//	type is the array of the damage type. 
//	if damage has multiple types the damage will be modified by the average of the multipliers
	
	var healAmt = base
	
	targ.THP += healAmt
	
	if(targ.THP > targ.MHP){
		targ.THP = targ.MHP
	}
	ds_list_add(Battle_Controller_obj.log, (srcId.ins_name + " Heals " + string(healAmt) + " damage"))
	var ins = instance_create_layer(x, y, "ActInstances", Action_Icon_obj)
	ins.setDir = 1
	ins.msg = string(healAmt)
}