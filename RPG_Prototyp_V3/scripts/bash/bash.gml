// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bash(ins){
	var bas = 10 + cStats[0]
	ds_list_add(ins.actionScr, do_damage)
	ins.base = bas + (irandom_range(0, (bas/10))) - (bas/20)
	ins.actSpr = Weapon_2_spr
	if(equipment[0] != ""){
		ins.base += equipment[0][2]
		for(var i = 0; i < array_length(equipment[0][3]); i ++){
			ins._type[i] += equipment[0][3][i]
		}
	}
}

function bash_setup(){
//	[0 name, 1 desc, 2 cost, 3 cooldown, 4 cCooldown, 5 target type, 6 script, 7 modStat, 8 sprite]
	return ["Bash", "Basic attack", 0, 0, 0, 0, bash, 1, Bash_icon]
//			0,		1,				2, 3, 4, 5, 6,    7
}

/*
target type determines how the attack shows targetting icons and which side it targets
ex:	0, 1, 2		opponent side single, multi or all target
	multi target is the target and the two surounding it.
	
	3, 4, 5		self side self, single or all target
	self target is exclusivly the entity performing the action.
*/