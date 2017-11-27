image_speed = 0;
sprite_index = s_rpg_player_run_down;

var _animation_speed = 1;
if keyboard_check(ord("A")) and !place_meeting(x-4, y, o_solid)
{
	x=x-4;
	sprite_index = s_rpg_player_run_left;
	image_xscale = 1;
	image_speed = 1;
}

if keyboard_check(ord("D")) and !place_meeting(x+4, y, o_solid)
{
	x=x+4;
	sprite_index = s_rpg_player_run_left;
	image_xscale = -1;
	image_speed = 1;
}

if keyboard_check(ord("W")) and !place_meeting(x, y-4, o_solid)
{
y=y-4;
sprite_index = s_rpg_player_run_up;
image_speed = 1;
}

if keyboard_check(ord("S")) and !place_meeting(x, y+4, o_solid)
{
y=y+4;
sprite_index = s_rpg_player_run_down;
image_speed = 1;
}

 if place_meeting(x,y,o_portal_level_1)
 {
	room_goto(5);
 }
 
  if place_meeting(x,y,o_portal_level_2)
 {
	room_goto(6);
 }
 
  if place_meeting(x,y,o_rpg_portal)
 {
	room_goto(4);
 }
