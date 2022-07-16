/// @description Insert description here
// You can write your code in this editor

if(statInit){
	statInit = false
	canAct = true
	array_copy(cStats, 0, bStats, 0, array_length(bStats))
	array_copy(cRes, 0, bRes, 0, array_length(bRes))
	for(var i = 0; i < ds_list_size(effects); i ++){
		if(effects[| i][0] != 0 && effects[| i][1] != ""){
			effects[| i][1]()
		}
	}
}

if(CRate > 0){
	if(CHP != THP){
		if(THP < CHP){
			CHP -= CRate
		}else{
			CHP += CRate
		}
		if(THP < 0){
			THP = 0
		}
	}
}else{
	if(CHP != THP){
		CHP = THP
	}
}
// if Current HP is less or equal to 0 skips turn.
// this is because CHP does not change instantly unlike other effects that can cause 
// a turn miss.
if(ceil(CHP) <= 0){	
	isDowned = true
	canAct = false
}else{
	isDowned = false
}

for(var i = 0; i < ds_list_size(reactions); i ++){
	if(reactions[| i][0] <= 0){
		if(reactions[| i][1]()){
			reactions[| i][0] = reactions[| i][2]
		}
	}
//	reactions array example	[0,			script		cooldown max]
//							0 cooldown,	1 script,	2 
//	cooldown decreases each turn if greater than 0. reaction can only happen if cooldown is 0 or lower
}

if(active){
	
	if(control != "" && canAct){
		control()
	}else{
		active = false
		statInit = true
		Battle_Controller_obj.turnInd ++
	}
}


if(CHP <= 0){
	add_effect(id, downed_setup())
}
