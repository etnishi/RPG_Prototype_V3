// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function start_action(actInd, targ){
//act[	name,	desc,	cost,	cooldown,	cCooldown,	target type,	script]
//		0		1		2		3			4			5				6
	if(CMP >= actions[| actInd][2] && actions[| actInd][4] <= 0){
		CMP -= actions[| actInd][2]
		actions[| actInd][4] = actions[| actInd][3]
		actions[| actInd][6](targ)
	}
}