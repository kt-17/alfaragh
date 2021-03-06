global.player_xpos = x;
global.player_ypos = y;
gravity = 0;
gravity_direction = 270;

var _animation_speed = 1;
vspd = vspd + grav;

if keyboard_check(ord("H"))
{
	sprite_index = s_wasd;
	image_speed = 12;
}

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

if mouse_check_button_pressed(mb_left)
{
	sprite_index = s_player_attack;
	image_speed = 1.5;
	global.fight = 1;
}

if mouse_check_button_released(mb_left)
{
	image_index = 0;
	global.fight = 0;
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
	image_index = 0;
}

 if (mouse_check_button(mb_middle))
 {
	sprite_index =  s_player_block;
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

if (global.player_health <= 1)
{
	image_index = 0;
	
	if image_index ==0
	{
	y += 4;
	instance_activate_object(o_gameover);
	}
}

if place_meeting(x,y+1,o_solid)
{
	jump = 0;
}

if (global.level1enemycount == 0)
{
	instance_activate_object(o_goal_level_1);
}

if global.level2enemycount == 0
{
	instance_activate_object(o_goal_level_2);
}

if global.boss_health <= 0
{
	instance_activate_object(o_goal_boss);
}

if place_meeting(x, y, o_skull) and !global.player_health <= 0 and !mouse_check_button(mb_middle)
{
	global.player_health -= .1*global.attack_damage;
}

if place_meeting(x, y, o_spider) and !global.player_health <= 0 and !mouse_check_button(mb_middle)
{
	global.player_health -= .3*global.attack_damage;
}

if place_meeting(x, y, o_boss) and sprite_index == s_player_attack
{
	global.boss_health -= 1.3;
}
if global.uhealth == 1
{
	global.player_health = 1000000000;
}