// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mp_regen(){
	CMP += 1
	if(CMP > MMP){
		CMP = MMP
	}
}

function mp_regen_setup(){
	return [-1, "", "MP Regen", 4, mp_regen]
}