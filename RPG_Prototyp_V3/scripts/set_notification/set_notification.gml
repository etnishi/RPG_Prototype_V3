// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_notification(xpos, ypos, notif, eScript, txtSpd, pause){
	var ins = instance_create_layer(xpos, ypos, "MenuInstances", Notification_obj)
	ins.msg = notif
	ins.msgspd = txtSpd
	ins.doPause = pause
	ins.endScr = eScript
}