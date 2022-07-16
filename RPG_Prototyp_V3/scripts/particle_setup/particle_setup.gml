// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

var part = part_type_create()
part_type_sprite(part , Magic_1_spr, true, false, false)
part_type_life(part, 10, 20)
part_type_speed(part, 2, 4, 0, 0);
part_type_direction(part, 0, 360, 0, 2);
part_type_orientation(part, 0, 0, 0, 0, 1);

global.part_mag = part

