// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_test_enemy(){
	var out = []
	out[12] = ["", "", "", "", "", "", "", ""]
	
	out[0]	= "name"
	out[1]	= true
	out[2]	= random_control
//			  [str,def,mag,mdef,spd,lck]
	out[3]	= [10, 10, 1, 1, 10, 10]
	out[4]	= 10
	out[5]	= 10
	out[6]	= 10
	out[7]	= 10
	out[8]	= [1, 1, 1, 1, 1, 1, 1]
	out[9]	= [bash_setup()]
	out[10] = []
	out[11] = [endure_setup()]
	
	return out
}