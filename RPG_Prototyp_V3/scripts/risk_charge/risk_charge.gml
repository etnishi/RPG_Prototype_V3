// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function risk_charge(){
	for(var i = 0; i < array_length(cStats); i ++){
		cStats[i] += 4
	}
}

function risk_charge_setup(){
//	turnLimit, script, description, id
	return [2, risk_charge, "Risk Charge", 5, damage_5]
}