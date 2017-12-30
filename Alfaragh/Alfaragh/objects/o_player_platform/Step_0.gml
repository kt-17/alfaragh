<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

=======
>>>>>>> parent of bf789d1... organize
image_speed = 0;
=======
global.player_xpos = x;
global.player_ypos = y;
>>>>>>> ecee9e294f28952dd96253b65011a1d0699122a7
=======
>>>>>>> parent of ecee9e2... kms
gravity = 0;
gravity_direction = 270;

var _animation_speed = 1;
vspd = vspd + grav;

if keyboard_check(ord("A")) and !place_meeting(x-4, y, o_solid)
{
	x -= 5;
	sprite_index = s_player_run_left;
	image_xscale = 3.5;
	image_speed = _animation_speed;
	direction_facing_ = 0;
}

if keyboard_check(ord("D")) and !place_meeting(x+4, y, o_solid)
{
	x=x+5;
	sprite_index = s_player_run_left;
	image_xscale = -3.5;
	image_speed = _animation_speed;
	direction_facing_ = 1;
} 

<<<<<<< HEAD
<<<<<<< HEAD
 
  if keyboard_check(vk_escape)
 {
	room_goto(5);
 }


=======
>>>>>>> parent of bf789d1... organize
if not place_meeting(x,y+2, o_solid) 
=======
if mouse_check_button(mb_left)
>>>>>>> ecee9e294f28952dd96253b65011a1d0699122a7
{
	sprite_index = s_player_attack;
	if image_index <= 8
	{
	image_speed = 1;
	}
}

if mouse_check_button_released(mb_left)
{
	image_index = 0;
	if direction_facing_ == 1
	{
		sprite_index = s_player_run_left;
		image_xscale = -3.5;
	}
	
	if direction_facing_ == 0
	{
		sprite_index = s_player_run_left;
		image_xscale = 3.5;
	}
}

if !keyboard_check(ord("D")) and !keyboard_check(ord("A")) and !mouse_check_button(mb_left)
{
	image_speed = 0;
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

if place_meeting(x,y+1,o_solid)
{
	jump = 0;
}