image_speed = 1;

if place_meeting(x, y, o_player_platform)
{
	global.player_health -= .1;
}
	
if global.boss_health <= 50
{
	sprite_index = s_boss_3_lazers
	image_xscale = -10;
	image_yscale = 10;
	if place_meeting(x, y, o_player_platform)
	{
		global.player_health -= .4*global.attack_damage;
	}
}
if global.boss_health <= 0
{
	sprite_index = s_boss_dying;
	alarm[0] = 30;
}