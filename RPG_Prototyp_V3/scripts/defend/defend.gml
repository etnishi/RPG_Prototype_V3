// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function defend(ins){
	ds_list_add(ins.actionScr, do_add_effect)
	ds_list_add(ins.effectScr, def_up_setup())
	ins.actSpr = Shield_1_spr
}

function defend_setup(){
//	[name, desc, cost, cooldown, cCooldown, target type, script]
	return ["Defend", "Defend", 0, 0, 0, 3, defend, 0, fortify_spell]
}
/*
target type determines how the attack shows targetting icons and which side it targets
ex:	0, 1, 2		opponent side single, multi or all target
	multi target is the target and the two surounding it.
	
	3, 4, 5		self side self, single or all target
	self target is exclusivly the entity performing the action.
*/