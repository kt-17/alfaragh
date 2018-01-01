global.player_xpos = x;
global.player_ypos = y;
image_speed = 0;
sprite_index = s_rpg_player_run_down;
sound_speed = 2;
var _animation_speed = 1;
change = clamp(change, 0, 1);;


if keyboard_check(ord("A")) and !place_meeting(x-4, y, o_solid) and !place_meeting(x-4, y, o_portal_2_block) and !place_meeting(x-4, y, o_portal_3_block)
{
	x=x-6;
	sprite_index = s_rpg_player_run_left;
	image_xscale = 3.5;
	image_speed = 1;
	audio_counter -= change;
}

if keyboard_check(ord("D")) and !place_meeting(x+4, y, o_solid) and !place_meeting(x+4, y, o_portal_2_block) and !place_meeting(x+4, y, o_portal_3_block)
{
	x=x+6;
	sprite_index = s_rpg_player_run_left;
	image_xscale = -3.5;
	image_speed = 1;
	audio_counter -= change;
}

if keyboard_check(ord("W")) and !place_meeting(x, y-4, o_solid) and !place_meeting(x, y-4, o_portal_2_block) and !place_meeting(x, y-4, o_portal_3_block)
{
	y=y-6;
	sprite_index = s_rpg_player_run_up;
	image_speed = 1;
	audio_counter -= change;

}

if keyboard_check(ord("S")) and !place_meeting(x, y+4, o_solid) and !place_meeting(x, y+4, o_portal_2_block) and !place_meeting(x, y+4, o_portal_3_block)
{
	y=y+6;
	sprite_index = s_rpg_player_run_down;
	image_speed = 1;
	audio_counter -= change;
}


 if place_meeting(x,y,o_portal_level_1)
 {
	room_goto(6);
 }
 
  if place_meeting(x,y,o_portal_level_2)
 {
	room_goto(7);
 }
 
  if keyboard_check(vk_escape)
 {
	room_goto(1);
 }

if global.levelbosswon == true
{
	instance_activate_object(o_health_pack);
}