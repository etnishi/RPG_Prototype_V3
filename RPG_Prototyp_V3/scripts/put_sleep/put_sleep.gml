// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function put_sleep(ins){
	ds_list_add(ins.actionScr, do_add_effect)
	ds_list_add(ins.effectScr, sleep_setup())
	ins.actSpr = Shield_1_spr
}

function put_sleep_setup(){
//	[0 name, 1 desc, 2 cost, 3 cooldown, 4 cCooldown, 5 target type, 6 script, 7 modStat, sprite]
	return ["Sleep", "Put to sleep", 15, 4, 0, 0, put_sleep, 1, frenzy_spell__critical_booster_]
//			0,		1,				2, 3, 4, 5, 6,    7
}