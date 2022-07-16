/// @description Insert description here
// You can write your code in this editor

global.team = [init_test_player(), init_test_player(), init_test_player(), ""]

global.reserves = ds_list_create()

global.enemyTeam = [init_test_enemy(), init_test_enemy(), init_test_enemy(), init_test_enemy()]

global.inventory = [0, 4, 4, 4, 4, 4, 0, 0]
/* inventory IDs:
0, single medicine lv 1
1, single medicine lv 2
2, revive
3, multi medicine lv 1
4, multi medicine lv 2
5, stat up def / mdef
6, stat up atk / mag
7, status heal
*/
global.keys = ds_map_create()

global.recall = []

global.lastRoom = Overworld

room_goto(BattleRoom)