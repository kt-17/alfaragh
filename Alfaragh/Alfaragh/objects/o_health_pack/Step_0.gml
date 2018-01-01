if place_meeting(x, y, o_player_platform)
{
	global.player_health += 10;
	instance_destroy();
}