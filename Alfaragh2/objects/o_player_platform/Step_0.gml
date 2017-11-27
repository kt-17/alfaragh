image_speed = 0;
gravity = 0;
gravity_direction = 270;

var _animation_speed = 1;

if place_meeting( x, y, o_kill)
{
	sprite_index = s_player_death;
	image_speed = _animation_speed;
}
if keyboard_check(ord("A")) and !place_meeting(x-4, y, o_solid) and! mouse_check_button(mb_left)
{
	x=x-4;
	sprite_index = s_player_run_left;
	image_xscale = 1;
	image_speed = _animation_speed;
	direction_facing_ = 0;
}

if keyboard_check(ord("D")) and !place_meeting(x+4, y, o_solid) and! mouse_check_button(mb_left)
{
	x=x+4;
	sprite_index = s_player_run_left;
	image_xscale = -1;
	image_speed = _animation_speed;
	direction_facing_ = 1;
}

if mouse_check_button(mb_left)
{
	if direction_facing_ = 0
	{
	sprite_index = s_player_fight;
	image_xscale = 1;
	image_speed = _animation_speed;
	}
}

if mouse_check_button(mb_left)
{
	if direction_facing_ = 1
	{
	sprite_index = s_player_fight;
	image_xscale = -1;
	image_speed = _animation_speed;
	}
}

if place_meeting(x, y, o_rpg_portal)
{
	room_goto(0);
}