// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function heal_effect(ins){
	ds_list_add(ins.actionScr, do_remove_effect)
	ds_list_add(ins.effectScr, sleep_setup())
	ins.actSpr = Bubble_1_spr
	ins.sprTrack = true
	ins.part_type = global.part_mag
	ins.part_timer = 2
}

function heal_effect_setup(){
//	[0 name, 1 desc, 2 cost, 3 cooldown, 4 cCooldown, 5 target type, 6 script, 7 modStat]
	return ["Heal", "Basic heal", 10, 4, 0, 0, heal_effect, 1, healing_spell]
//			0,		1,				2, 3, 4, 5, 6,    7
}