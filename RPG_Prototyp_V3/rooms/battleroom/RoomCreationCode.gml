
// this would be put into the creation code of a theoretically finished game

global.team = [init_test_player(), init_test_player()]

global.reserves = ds_list_create()

global.enemyTeam = [init_test_enemy()]

global.inventory = ds_list_create()

start_battle(global.enemyTeam)