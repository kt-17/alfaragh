/// @description Insert description here

if keyboard_check(vk_left) and ! place_meeting(x-4,y,obj_collision)
{
	global.volume -= .05;
	x -= 4;
}

if keyboard_check(vk_right) and ! place_meeting(x+4,y,obj_collision)
{
	global.volume += .05;
	x += 4;
}