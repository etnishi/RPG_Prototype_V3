// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function itemHeal(ins){
	var bas = 20 + cStats[2]
	ds_list_add(ins.actionScr, do_heal)
	ins.base = bas + (irandom_range(0, (bas/10))) - (bas/20)
}

function itemHeal_setup(){
//	[0 name, 1 desc, 2 item id, 3 cooldown, 4 cCooldown, 5 target type, 6 script, 7 modStat]
	return ["Heal", "Basic heal", 1, 0, 0, 4, itemHeal, 1, potion_1_icon]
//			0,		1,				2, 3, 4, 5, 6,    7
}

/*
target type determines how the attack shows targetting icons and which side it targets
ex:	0, 1, 2		opponent side single, multi or all target
	multi target is the target and the two surounding it.
	
	3, 4, 5		self side self, single or all target
	self target is exclusivly the entity performing the action.
*/