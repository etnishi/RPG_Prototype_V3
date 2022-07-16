// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function run(ins){
	var bas = 20 + cStats[2]
	ds_list_add(ins.actionScr, do_heal)
	ins.base = bas + (irandom_range(0, (bas/10))) - (bas/20)
}

function run_setup(){
//	[0 name, 1 desc, 2 item id, 3 cooldown, 4 cCooldown, 5 target type, 6 script, 7 modStat]
	return ["Run", "Run from battle", 0, 0, 0, 4, run, 1, run_icon]
//			0,		1,				2, 3, 4, 5, 6,    7
}