/// @description Insert description here
// You can write your code in this editor

//	time it takes to complete action
frameCount = 20
countDown = frameCount

movSpeed = 1

srcId = noone
targ = noone

actionScr = ds_list_create()

effectScr = ds_list_create()

init = true

base = 0

isCrit = false
critMod = 0
hitRate = 100

// damage type to be compared against target resistance stats. 
_type = [1, 0, 0, 0, 0, 0]

actSpr = ""
actSprInd = 0
sprTrack = false

part_type = ""

part_timer = 2
p_cur = 0