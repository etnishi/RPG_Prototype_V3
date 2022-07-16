// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mbash(ins){
	ds_list_add(ins.actionScr, do_damage)
	ins.base = 10 + cStats[0]
	ins._type = [0, 1, 0, 0, 0, 0, 0]
	ins.actSpr = Magic_3_spr
	ins.sprTrack = true
	ins.part_type = global.part_mag
	ins.part_timer = 2
//	[phys, mag, fire, cryo, energy, mind, unblockable]
}

function mbash_setup(){
//	[name, desc, cost, cooldown, cCooldown, target type, script, modStat]
	return ["Mag Bash", "Basic magic attack", 10, 2, 0, 0, mbash, 1, ice_spell]
}

/*
target type determines how the attack shows targetting icons and which side it targets
ex:	0, 1, 2		opponent side single, multi or all target
	multi target is the target and the two surounding it.
	
	3, 4, 5		self side self, single or all target
	self target is exclusivly the entity performing the action.
*/