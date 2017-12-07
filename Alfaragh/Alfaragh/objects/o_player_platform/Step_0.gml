image_speed = 0;
gravity = 0;
gravity_direction = 270;
var _animation_speed = 1;

if keyboard_check(ord("A")) and !place_meeting(x-4, y, o_solid) and! mouse_check_button(mb_left)
{
	x=x-10;
	sprite_index = s_player_run_left;
	image_xscale = 3.5;
	image_speed = _animation_speed;
	direction_facing_ = 0;
}

if keyboard_check(ord("D")) and !place_meeting(x+4, y, o_solid) and! mouse_check_button(mb_left)
{
	x=x+10;
	sprite_index = s_player_run_left;
	image_xscale = -3.5;
	image_speed = _animation_speed;
	direction_facing_ = 1;
}

 if (mouse_check_button(mb_middle))
 {
	sprite_index =  s_player_idletoblock;
	image_speed = 1;
 }

if not place_meeting(x, y+2, o_solid)
{
	gravity=.5
}

if place_meeting(x, y+2, o_solid)
{
	gravity=0;
}

if place_meeting(x, y, o_solid)
{
	y -= 1;
}
