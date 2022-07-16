// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function put_Risk_Charge(ins){
	ds_list_add(ins.actionScr, do_add_effect)
	ds_list_add(ins.effectScr, risk_charge_setup())
	ins.actSpr = Magic_4_spr
}

function put_Risk_Charge_setup(){
//	[name, desc, cost, cooldown, cCooldown, target type, script]
	return ["Risk Charge", "Stat up but damage over time", 10, 10, 0, 3, put_Risk_Charge, 0, Risk_Charge_spr]
}
/*
target type determines how the attack shows targetting icons and which side it targets
ex:	0, 1, 2		opponent side single, multi or all target
	multi target is the target and the two surounding it.
	
	3, 4, 5		self side self, single or all target
	self target is exclusivly the entity performing the action.
*/