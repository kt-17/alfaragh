image_speed = 0;
gravity = 0;
gravity_direction = 270;

var _animation_speed = 1;
vspd = vspd + grav;

if mouse_check_button(mb_left)
{
	sprite_index = s_player_attack;
	image_speed = 1;
}

if keyboard_check(ord("A")) and !place_meeting(x-4, y, o_solid) and! mouse_check_button(mb_left)
{
	x -= 5;
	sprite_index = s_player_run_left;
	image_xscale = 3.5;
	image_speed = _animation_speed;
	direction_facing_ = 0;
}

if keyboard_check(ord("D")) and !place_meeting(x+4, y, o_solid) and! mouse_check_button(mb_left)
{
	x=x+5;
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
 
 if (place_meeting(x,y+vspd,o_solid))
 {
	 while (!place_meeting(x,y+sign(vspd),o_solid))
	 {
		 y = y + sign(vspd);
	 }
	 vspd = 0;
 }
 y = y + vspd;

if (global.player_health <= 0)
{
	sprite_index = s_player_death;
	image_speed = 1;
}